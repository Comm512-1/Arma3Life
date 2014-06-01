//Close inventory
closeDialog 0;

//Little hint then wait a litle before starting drugs effects
hint "You're drunk. Go mess with the cops!";
sleep 3;

//Activate ppEffects we need
"radialBlur" ppEffectEnable true;
enableCamShake true;

//Let's go for 45secs of effetcs
for "_i" from 0 to 90 do
{
    "radialBlur" ppEffectAdjust  [random 0.02,random 0.02,0.15,0.15];
    "radialBlur" ppEffectCommit 1;
    addcamShake[random 4, 2, random 5];
    sleep 1;
};

//Stop effects
"radialBlur" ppEffectAdjust  [0,0,0,0];
"radialBlur" ppEffectCommit 5;
sleep 6;

//Deactivate ppEffects
"radialBlur" ppEffectEnable false;
resetCamShake;