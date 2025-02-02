if (global.classic_stage)
    kill();
else if (global.vs_stage)
    deal_damage(sign(other.acceleration) * 2);
