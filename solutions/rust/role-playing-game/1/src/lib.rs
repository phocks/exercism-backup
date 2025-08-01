// This stub file contains items that aren't used yet; feel free to remove this module attribute
// to enable stricter warnings.
#![allow(unused)]

pub struct Player {
    pub health: u32,
    pub mana: Option<u32>,
    pub level: u32,
}

impl Player {
    pub fn revive(&self) -> Option<Player> {
        if self.health > 0 {
            return None;
        } else {
            if self.level >= 10 {
                Some(Player { health: 100, mana: Some(100), level: self.level })
            } else {
                Some(Player { health: 100, mana: self.mana, level: self.level })
            }
        }
    }

    pub fn cast_spell(&mut self, mana_cost: u32) -> u32 {
        if self.mana == None {
            if mana_cost > self.health {
                self.health = 0;
            } else {
                self.health = self.health - mana_cost;
            }
            0
        } else if self.mana < Some(mana_cost) {
            0
        } else {
            let self_mana: u32 = self.mana.unwrap();
            let mut new_mana;

            if mana_cost >= self_mana {
                new_mana = 0;
            } else {
                new_mana = self_mana - mana_cost;
            }
            self.mana = Some(new_mana);
            return mana_cost * 2;
        }
    }
}