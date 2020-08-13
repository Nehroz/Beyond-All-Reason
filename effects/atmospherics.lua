-- Atmospheric Map Effects

return {
  ["fogdirty"] = {
    usedefaultexplosions = false,
    grounddust = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      unit               = false,
      properties = {
        airdrag            = 0.94,
        colormap           = [[0 0 0 0.0  0.15 0.14 0.13 0.08   0.1 0.1 0.1 0.04   0 0 0 0.01]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = 60,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.030, 0]],
        numparticles       = 5,
        particlelife       = 300,
        particlelifespread = 180,
        particlesize       = 100,
        particlesizespread = 450,
        particlespeed      = 6.5,
        particlespeedspread = 4.5,
        pos                = [[-200 r900, -50 r75, 100 r900]],
        sizegrowth         = [[0.3 r0.2]],
        sizemod            = 1,
        texture            = [[fogdirty]],
        alwaysvisible      = true,
      },
    },
  },

  ["fogdirty-red"] = {
    usedefaultexplosions = false,
    grounddust = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      unit               = false,
      properties = {
        airdrag            = 0.94,
        colormap           = [[0 0 0 0.0  0.20 0.12 0.07 0.09   0.12 0.08 0.05 0.04   0 0 0 0.01]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = 60,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.030, 0]],
        numparticles       = 5,
        particlelife       = 300,
        particlelifespread = 180,
        particlesize       = 100,
        particlesizespread = 450,
        particlespeed      = 6.5,
        particlespeedspread = 4.5,
        pos                = [[-200 r900, -50 r75, 100 r900]],
        sizegrowth         = [[0.3 r0.2]],
        sizemod            = 1,
        texture            = [[fogdirty]],
        alwaysvisible      = true,
      },
    },
  },

  ["fogdirty-brown"] = {
    usedefaultexplosions = false,
    grounddust = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      unit               = false,
      properties = {
        airdrag            = 0.94,
        colormap           = [[0 0 0 0.0  0.18 0.14 0.10 0.08   0.12 0.08 0.06 0.04   0 0 0 0.01]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = 60,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.030, 0]],
        numparticles       = 5,
        particlelife       = 300,
        particlelifespread = 180,
        particlesize       = 100,
        particlesizespread = 450,
        particlespeed      = 6.5,
        particlespeedspread = 4.5,
        pos                = [[-200 r900, -50 r75, 100 r900]],
        sizegrowth         = [[0.3 r0.2]],
        sizemod            = 1,
        texture            = [[fogdirty]],
        alwaysvisible      = true,
      },
    },
  },

  ["fogdirty-green"] = {
    usedefaultexplosions = false,
    grounddust = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      unit               = false,
      properties = {
        airdrag            = 0.94,
        colormap           = [[0 0 0 0.0  0.15 0.18 0.07 0.09   0.09 0.10 0.05 0.04   0 0 0 0.01]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = 60,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.030, 0]],
        numparticles       = 5,
        particlelife       = 300,
        particlelifespread = 180,
        particlesize       = 100,
        particlesizespread = 450,
        particlespeed      = 6.5,
        particlespeedspread = 4.5,
        pos                = [[-200 r900, -50 r75, 100 r900]],
        sizegrowth         = [[0.3 r0.2]],
        sizemod            = 1,
        texture            = [[fogdirty]],
        alwaysvisible      = true,
      },
    },
  },

  ["mistycloud"] = {
    usedefaultexplosions = false,
    cloud = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      unit               = false,
      properties = {
        airdrag            = 0.99,
        colormap           = [[0 0 0 0.0  0.15 0.14 0.13 0.07   0.1 0.1 0.1 0.04   0 0 0 0.01]],
        directional        = false,
        emitrot            = 8,
        emitrotspread      = 8,
        emitvector         = [[-0.35 r0.7, 0, -0.1 r0.2]],
        gravity            = [[-0.005 r0.01, -0.01 r0.02, -0.005 r0.01]],
        numparticles       = [[2 r1]],
        particlelife       = 300,
        particlelifespread = 300,
        particlesize       = 240,
        particlesizespread = 960,
        particlespeed      = 16,
        particlespeedspread = 16,
        pos                = [[-40 r300, -20 r150, -40 r300]],
        sizegrowth         = [[-0.4 r0.8]],
        sizemod            = 1,
        texture            = [[cloudpuff]],
        alwaysvisible      = true,
      },
    },
  },

  ["lightningstorm"] = {
    usedefaultexplosions = false,
    raindrops = {
      air                = true,
      class              = [[CExpGenSpawner]],
      count              = 14,
      ground             = true,
      water              = true,
      underwater         = false,
      properties = {
        delay              = [[1 r1090]],
        explosiongenerator = [[custom:lightninginair]],
        pos                = [[-500 r1000, 128, -500 r1000]],
      },
    },
  },

  ["lightningstormgreen"] = {
    usedefaultexplosions = false,
    raindrops = {
      air                = true,
      class              = [[CExpGenSpawner]],
      count              = 14,
      ground             = true,
      water              = true,
      underwater         = false,
      properties = {
        delay              = [[1 r1090]],
        explosiongenerator = [[custom:lightninginairgreen]],
        pos                = [[-500 r1000, 128, -500 r1000]],
      },
    },
  },

  ["lightninginair"] = {
    lightningbolt = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        colormap           = [[0.1 0.1 0.1 0.006   0.8 0.8 0.8 0.02   0 0 0 0.01   0.5 0.5 0.5 0.020   0.01 0.01 0.01 0.03   0.01 0.01 0.01 0.009   0 0 0 0.01]],
        dir                = [[0, 1, 0]],
        --gravity            = [[0.0, 0.1, 0.0]],
        frontoffset        = 0,
        fronttexture       = [[none]],
        length             = 1700,
        sidetexture        = [[lightninginair]],
        size               = [[40 r80]],
        sizegrowth         = 0,
        ttl                = [[2.5 r7]],
        pos                = [[0.5, 64, 0.0]],
        alwaysvisible      = true,
      },
    },
  },
  ["lightninginairgreen"] = {
    lightningbolt = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        colormap           = [[0.1 0.2 0.1 0.007   0.6 0.8 0.65 0.025   0 0 0 0.01   0.6 0.8 0.65 0.025   0.01 0.02 0.01 0.03   0.01 0.01 0.01 0.009   0 0 0 0.01]],
        dir                = [[0, 1, 0]],
        --gravity            = [[0.0, 0.1, 0.0]],
        frontoffset        = 0,
        fronttexture       = [[none]],
        length             = 1700,
        sidetexture        = [[lightninginair]],
        size               = [[40 r80]],
        sizegrowth         = 0,
        ttl                = [[3 r8]],
        pos                = [[0.5, 64, 0.0]],
        alwaysvisible      = true,
      },
    },
  },
  ["lightningstrike"] = {
    lightningbolt = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        colormap           = [[0.1 0.1 0.1 0.007   0.8 0.8 0.8 0.025   0 0 0 0.01   0.60 0.6 0.6 0.025   0.01 0.01 0.01 0.03   0.01 0.01 0.01 0.009   0 0 0 0.01]],
        dir                = [[0, 1, 0]],
        --gravity            = [[0.0, 0.1, 0.0]],
        frontoffset        = 0,
        fronttexture       = [[none]],
        length             = 2500,
        sidetexture        = [[lightning]],
        size               = [[50 r100]],
        sizegrowth         = 0,
        ttl                = [[2.5 r7]],
        pos                = [[0.5, 5, 0.0]],
        alwaysvisible      = true,
      },
    },
    lightningbolt2 = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 1,
        colormap           = [[0.1 0.1 0.1 0.007   0.8 0.8 0.8 0.025   0 0 0 0.01   0.60 0.6 0.6 0.025   0.01 0.01 0.01 0.03   0.01 0.01 0.01 0.009   0 0 0 0.01]],
        directional        = true,
        emitrot            = 45,
        emitrotspread      = 45,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = [[3 r3]],
        particlelife       = 10,
        particlelifespread = 15,
        particlesize       = 20,
        particlesizespread = 40,
        particlespeed      = 1,
        particlespeedspread = 1,
        pos                = [[1, 300, 1]],
        sizegrowth         = -0.9,
        sizemod            = 1,
        texture            = [[lightning]],
        useairlos          = false,
        alwaysvisible      = true,
      },
    },
    groundflash_white = {
      class              = [[CSimpleGroundFlash]],
      count              = 1,
      air                = true,
      ground             = true,
      water              = false,
      underwater         = false,
      properties = {
        colormap           = [[0.6 0.6 0.6 0.45   0 0 0 0.01]],
        size               = 70,
        sizegrowth         = -0.4,
        ttl                = 9,
        texture            = [[groundflash]],
      },
    },
    electricityspikes = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 0.89,
        colormap           = [[0.9 0.9 0.9 0.037   0.6 0.6 0.6 0.01]],
        directional        = true,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 0, 0]],
        gravity            = [[0, -0.01, 0]],
        numparticles       = [[0.4 r0.9]],
        particlelife       = 7,
        particlelifespread = 1,
        particlesize       = 12,
        particlesizespread = 12,
        particlespeed      = 0,
        particlespeedspread = 3.3,
        pos                = [[0, 5, 0]],
        sizegrowth         = 0.75,
        sizemod            = 1,
        texture            = [[whitelightb]],
        useairlos          = false,
        alwaysvisible      = true,
      },
    },
    centerflare = {
      air                = true,
      class              = [[heatcloud]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        heat               = 8,
        heatfalloff        = 1.5,
        maxheat            = 16,
        pos                = [[r-2 r3, 5, r-2 r3]],
        size               = 2.5,
        sizegrowth         = 7,
        speed              = [[0, 1 0, 0]],
        texture            = [[plasmaball]],
        alwaysvisible      = true,
      },
    },
    sparks = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 0.85,
        colormap           = [[0.9 0.9 0.9 0.02   0.7 0.7 0.7 0.01   0 0 0 0]],
        directional        = true,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = [[2 r1]],
        particlelife       = 5,
        particlelifespread = 5,
        particlesize       = 18,
        particlesizespread = 22,
        particlespeed      = 10,
        particlespeedspread = 3,
        pos                = [[0, 4, 0]],
        sizegrowth         = -0.04,
        sizemod            = 0.92,
        texture            = [[flare2]],
        useairlos          = false,
        alwaysvisible      = true,
      },
    },
  },

  ["lightningstrikegreen"] = {
    lightningbolt = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        colormap           = [[0.1 0.2 0.1 0.007   0.6 0.8 0.65 0.012   0 0 0 0.01   0.7 0.9 0.75 0.03   0.01 0.02 0.01 0.03   0.01 0.01 0.01 0.009   0 0 0 0.01]],
        dir                = [[0, 1, 0]],
        --gravity            = [[0.0, 0.1, 0.0]],
        frontoffset        = 0,
        fronttexture       = [[none]],
        length             = 2500,
        sidetexture        = [[lightning]],
        size               = [[40 r100]],
        sizegrowth         = 0,
        ttl                = [[2.5 r9]],
        pos                = [[0.5, 5, 0.0]],
        alwaysvisible      = true,
      },
    },
    lightningbolt2 = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 1,
        colormap           = [[0.1 0.2 0.1 0.007   0.7 0.9 0.75 0.03   0 0 0 0.01   0.6 0.8 0.75 0.03   0.01 0.02 0.01 0.03   0.01 0.01 0.01 0.009   0 0 0 0.01]],
        directional        = true,
        emitrot            = 45,
        emitrotspread      = 45,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = [[3 r3]],
        particlelife       = 10,
        particlelifespread = 15,
        particlesize       = 20,
        particlesizespread = 40,
        particlespeed      = 1,
        particlespeedspread = 1,
        pos                = [[1, 300, 1]],
        sizegrowth         = -0.9,
        sizemod            = 1,
        texture            = [[lightning]],
        useairlos          = false,
        alwaysvisible      = true,
      },
    },
    groundflash_white = {
      class              = [[CSimpleGroundFlash]],
      count              = 1,
      air                = true,
      ground             = true,
      water              = false,
      underwater         = false,
      properties = {
        colormap           = [[0.5 0.7 0.5 0.45   0 0 0 0.01]],
        size               = 150,
        sizegrowth         = -7.5,
        ttl                = 13,
        texture            = [[groundflash]],
      },
    },
    electricityspikes = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 0.89,
        colormap           = [[0.75 0.9 0.8 0.037   0.6 0.7 0.6 0.01]],
        directional        = true,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 0, 0]],
        gravity            = [[0, -0.01, 0]],
        numparticles       = [[0.4 r0.9]],
        particlelife       = 7,
        particlelifespread = 1,
        particlesize       = 12,
        particlesizespread = 12,
        particlespeed      = 0,
        particlespeedspread = 3.3,
        pos                = [[0, 5, 0]],
        sizegrowth         = 0.75,
        sizemod            = 1,
        texture            = [[whitelightb]],
        useairlos          = false,
        alwaysvisible      = true,
      },
    },
    centerflare = {
      air                = true,
      class              = [[heatcloud]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        heat               = 8,
        heatfalloff        = 1.5,
        maxheat            = 16,
        pos                = [[r-2 r3, 5, r-2 r3]],
        size               = 2.5,
        sizegrowth         = 7,
        speed              = [[0, 1 0, 0]],
        texture            = [[plasmaball]],
        alwaysvisible      = true,
      },
    },
    sparks = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 0.85,
        colormap           = [[0.75 0.9 0.8 0.02   0.6 0.7 0.6 0.01   0 0 0 0]],
        directional        = true,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = [[2 r1]],
        particlelife       = 5,
        particlelifespread = 5,
        particlesize       = 18,
        particlesizespread = 22,
        particlespeed      = 10,
        particlespeedspread = 3,
        pos                = [[0, 4, 0]],
        sizegrowth         = -0.04,
        sizemod            = 0.92,
        texture            = [[flare2]],
        useairlos          = false,
        alwaysvisible      = true,
      },
    },
  },

  ["sandstorm"] = {
    usedefaultexplosions = false,
    raindrops = {
      air                = true,
      class              = [[CExpGenSpawner]],
      count              = 50,
      ground             = true,
      water              = true,
      underwater         = false,
      properties = {
        delay              = [[1 r750]],
        explosiongenerator = [[custom:sandblast]],
        pos                = [[-375 r750, -20 r30, -375 r750]],
      },
    },
  },

  ["sandblast"] = {
    usedefaultexplosions = false,
    grounddust = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      unit               = false,
      properties = {
        airdrag            = 0.98,
        colormap           = [[0 0 0 0.0  0.05 0.05 0.05 0.03   0.07 0.07 0.07 0.08   0.1 0.1 0.1 0.12   0 0 0 0.01]],
        directional        = false,
        emitrot            = 4,
        emitrotspread      = 4,
        emitvector         = [[1, 0, -0.1]],
        gravity            = [[0.5, -0.03, -0.01]],
        numparticles       = 4,
        particlelife       = 8,
        particlelifespread = 50,
        particlesize       = 36,
        particlesizespread = 60,
        particlespeed      = 5.5,
        particlespeedspread = 3.5,
        pos                = [[-20 r40, -20 r50, 0 r40]],
        sizegrowth         = [[2 r1.8]],
        sizemod            = 1,
        texture            = [[sandblast]],
        alwaysvisible      = true,
      },
    },
  },

  ["sandcloud"] = {
    usedefaultexplosions = false,
    raindrops = {
      air                = true,
      class              = [[CExpGenSpawner]],
      count              = 80,
      ground             = true,
      water              = true,
      underwater         = false,
      properties = {
        delay              = [[1 r500]],
        explosiongenerator = [[custom:sanddust]],
        pos                = [[-500 r1000, 125 r30, -500 r1000]],
      },
    },
  },

  ["sandclouddense"] = {
    usedefaultexplosions = false,
    raindrops = {
      air                = true,
      class              = [[CExpGenSpawner]],
      count              = 75,
      ground             = true,
      water              = true,
      underwater         = false,
      properties = {
        delay              = [[1 r375]],
        explosiongenerator = [[custom:sanddustdense]],
        pos                = [[-500 r1000, 125 r30, -500 r1000]],
      },
    },
  },

  ["sandclouddensexl"] = {
    usedefaultexplosions = false,
    raindrops = {
      air                = true,
      class              = [[CExpGenSpawner]],
      count              = 750,
      ground             = true,
      water              = true,
      underwater         = false,
      properties = {
        delay              = [[25 r1000]],
        explosiongenerator = [[custom:sanddustdense]],
        pos                = [[-500 r2500, 125 r30, -500 r2500]],
      },
    },
  },

["sanddust"] = {
    usedefaultexplosions = false,
    grounddust = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      unit               = false,
      properties = {
        airdrag            = 0.90,
        colormap           = [[0 0 0 0.0  0.20 0.20 0.20 0.18   0.1 0.1 0.1 0.09   0 0 0 0.0]],
        directional        = false,
        emitrot            = 5,
        emitrotspread      = 10,
        emitvector         = [[0, -1, 0]],
        gravity            = [[0, 0.019, 0]],
        numparticles       = 3,
        particlelife       = 200,
        particlelifespread = 140,
        particlesize       = 16,
        particlesizespread = 140,
        particlespeed      = 14.5,
        particlespeedspread = 7.5,
        pos                = [[0 r150, 0 r50, 0 r150]],
        sizegrowth         = [[0.25 r0.1]],
        sizemod            = 1,
        texture            = [[smoke_puff_red]],
        useairlos          = true,
        --alwaysvisible      = true,
      },
    },
  },

  ["sanddustdense"] = {
    usedefaultexplosions = false,
    grounddust = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      unit               = false,
      properties = {
        airdrag            = 0.90,
        colormap           = [[0 0 0 0.0  0.20 0.20 0.20 0.18   0.1 0.1 0.1 0.09   0 0 0 0.0]],
        directional        = false,
        emitrot            = 8,
        emitrotspread      = 16,
        emitvector         = [[0, -1, 0]],
        gravity            = [[0, 0.015, 0]],
        numparticles       = 5,
        particlelife       = 190,
        particlelifespread = 250,
        particlesize       = 24,
        particlesizespread = 170,
        particlespeed      = 14.5,
        particlespeedspread = 7.5,
        pos                = [[0 r150, 0 r50, 0 r150]],
        sizegrowth         = 0.4,
        sizemod            = 1,
        texture            = [[smoke_puff_red]],
        useairlos          = true,
        --alwaysvisible      = true,
      },
    },
  },

  ["dunecloud"] = {
    usedefaultexplosions = false,
    raindrops = {
      air                = true,
      class              = [[CExpGenSpawner]],
      count              = 25,
      ground             = true,
      water              = true,
      underwater         = false,
      properties = {
        delay              = [[1 r500]],
        explosiongenerator = [[custom:dunedust]],
        pos                = [[-175 r350, 100 r20, -175 r350]],
      },
    },
  },

["dunedust"] = {
    usedefaultexplosions = false,
    grounddust = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      unit               = false,
      properties = {
        airdrag            = 0.90,
        colormap           = [[0 0 0 0.0  0.20 0.25 0.16 0.10   0.10 0.14 0.12 0.07   0 0 0 0.0]],
        directional        = false,
        emitrot            = 5,
        emitrotspread      = 45,
        emitvector         = [[0, -1, 0]],
        gravity            = [[0, 0.015, 0]],
        numparticles       = 3,
        particlelife       = 120,
        particlelifespread = 100,
        particlesize       = 4,
        particlesizespread = 30,
        particlespeed      = 14.5,
        particlespeedspread = 7.5,
        pos                = [[0 r150, -20 r40, 0 r150]],
        sizegrowth         = [[0.20 r0.1]],
        sizemod            = 1,
        texture            = [[smoke_puff_red]],
        useairlos          = true,
        --alwaysvisible      = true,
      },
    },
  },

  ["fireflies"] = {
    usedefaultexplosions = false,
    raindrops = {
      air                = true,
      class              = [[CExpGenSpawner]],
      count              = 60,
      ground             = true,
      water              = true,
      underwater         = false,
      properties = {
        delay              = [[1 r750]],
        explosiongenerator = [[custom:firefly]],
        pos                = [[-25 r125, 5 r25, -25 r125]],
      },
    },
  },

  ["firefliesgreen"] = {
    usedefaultexplosions = false,
    raindrops = {
      air                = true,
      class              = [[CExpGenSpawner]],
      count              = 60,
      ground             = true,
      water              = true,
      underwater         = false,
      properties = {
        delay              = [[1 r750]],
        explosiongenerator = [[custom:fireflygreen]],
        pos                = [[-25 r125, 5 r25, -25 r125]],
      },
    },
  },

  ["firefly"] = {
    lightningballs = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater     = true,
      properties = {
        airdrag            = 0.96,
        colormap           = [[0 0 0 0.01   0.68 0.6 0.05 0.018   0.92 0.77 0.15 0.035    0.81 0.72 0.1 0.008   0.3 0.2 0.05 0.005   0 0 0 0.01]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = 180,
        --emitmul            = [[2, 2, 2]],
        emitvector         = [[1, 1, 1]],
        gravity            = [[0, 0.01, 0]],
        numparticles       = 1,
        particlelife       = 33,
        particlelifespread = 66,
        particlesize       = 4,
        particlesizespread = 35,
        particlespeed      = 0.12,
        particlespeedspread = 0.32,
        pos                = [[-10 r25, 1.0, -10 r25]],
        sizegrowth         = -0.4,
        sizemod            = 1.0,
        texture            = [[flare1]],
        alwaysvisible      = true,
      },
    },
  },

  ["fireflygreen"] = {
    lightningballs = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater     = true,
      properties = {
        airdrag            = 0.96,
        colormap           = [[0 0 0 0.01   0.5 0.7 0.05 0.018   0.7 0.92 0.15 0.035    0.6 0.81 0.1 0.008   0.15 0.3 0.05 0.005   0 0 0 0.01]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = 180,
        --emitmul            = [[2, 2, 2]],
        emitvector         = [[1, 1, 1]],
        gravity            = [[0, 0.01, 0]],
        numparticles       = 1,
        particlelife       = 33,
        particlelifespread = 66,
        particlesize       = 4,
        particlesizespread = 35,
        particlespeed      = 0.12,
        particlespeedspread = 0.32,
        pos                = [[-10 r25, 1.0, -10 r25]],
        sizegrowth         = -0.4,
        sizemod            = 1.0,
        texture            = [[flare1]],
        alwaysvisible      = true,
      },
    },
  },

  ["dustparticles"] = {
    usedefaultexplosions = false,
    raindrops = {
      air                = true,
      class              = [[CExpGenSpawner]],
      count              = 200,
      ground             = true,
      water              = true,
      underwater         = false,
      properties = {
        delay              = [[1 r750]],
        explosiongenerator = [[custom:dustparticle]],
        pos                = [[-25 r2000, 25 r150, -25 r2000]],
      },
    },
  },

  ["dustparticle"] = {
    lightningballs = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater     = true,
      properties = {
        airdrag            = 0.92,
        colormap           = [[0 0 0 0.01   0.2 0.2 0.2 0.016   0.3 0.3 0.3 0.03    0.25 0.25 0.25 0.008   0.1 0.1 0.1 0.005   0 0 0 0.01]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = 180,
        --emitmul            = [[2, 2, 2]],
        emitvector         = [[1, 0.1, 1]],
        gravity            = [[0, 0.01, 0]],
        numparticles       = 1,
        particlelife       = 100,
        particlelifespread = 200,
        particlesize       = 3,
        particlesizespread = 6,
        particlespeed      = 4.15,
        particlespeedspread = 1.16,
        pos                = [[-10 r25, 1.0, -10 r25]],
        sizegrowth         = -0.1,
        sizemod            = 1.0,
        texture            = [[flare1]],
        alwaysvisible      = true,
      },
    },
  },

["powerupwhite"] = {
    usedefaultexplosions = false,
    raindrops = {
      air                = true,
      class              = [[CExpGenSpawner]],
      count              = 60,
      ground             = true,
      water              = true,
      underwater         = false,
      properties = {
        delay              = [[1 r750]],
        explosiongenerator = [[custom:powerupspritewhite]],
        pos                = [[-25 r50, -35 r25, -25 r50]],
      },
    },
  },

["powerupspritewhite"] = {
    lightningballs = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater     = true,
      properties = {
        airdrag            = 0.96,
        colormap           = [[0 0 0 0.01   0.7 0.7 0.7 0.018   0.9 0.9 0.9 0.035    0.7 0.7 0.7 0.008   0.2 0.2 0.2 0.005   0 0 0 0.01]],
        directional        = true,
        emitrot            = 0,
        emitrotspread      = 0,
        --emitmul            = [[2, 2, 2]],
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.06, 0]],
        numparticles       = 1,
        particlelife       = 33,
        particlelifespread = 66,
        particlesize       = 6,
        particlesizespread = 15,
        particlespeed      = 0.40,
        particlespeedspread = 0.03,
        pos                = [[-10 r20, 1, -10 r20]],
        sizegrowth         = -0.4,
        sizemod            = 1.0,
        texture            = [[gunshot]],
        alwaysvisible      = true,
      },
    },
  },
  ["rain"] = {
    usedefaultexplosions = false,
    raindrops = {
      air                = true,
      class              = [[CExpGenSpawner]],
      count              = 3180,
      ground             = true,
      water              = true,
      underwater         = false,
      properties = {
        delay              = [[1 r1060]],
        explosiongenerator = [[custom:raindrop]],
        pos                = [[-875 r1750, 1250 r150, -875 r1750]],
      },
    },
  },

  ["raindrop"] = {
    usedefaultexplosions = false,
    grounddust = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = false,
      unit               = false,
      properties = {
        airdrag            = 1,
        colormap           = [[0 0 0 0   0.07 0.07 0.07 0.02   0.1 0.1 0.1 0.09   0 0 0 0.1]],
        directional        = true,
        emitrot            = 180,
        emitrotspread      = 10,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 2,
        particlelife       = 34,
        particlelifespread = 90,
        particlesize       = 18,
        particlesizespread = 90,
        particlespeed      = 11,
        particlespeedspread = 14,
        pos                = [[200 r900, 0 r500, 200 r900]],
        sizegrowth         = 0.8,
        sizemod            = 1,
        texture            = [[rain]],
        alwaysvisible      = true,
      },
    },
  },
}