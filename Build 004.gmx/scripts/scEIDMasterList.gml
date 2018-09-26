// This script keeps track of all the unique IDs.
// Each enum has an implicit value, so assigning numbers is no longer necessary.
// The ones that do not have implicit values are circumventing a "duplicate case" bug.

enum Weapons 
{
    wPowerBeam, wWaveBeam, wPlasmaBeam, wSpazerBeam, wPulseBeam, wIceBeam, wRuptureBeam, wPhazonBeam, wRuptureBeamTrail,
    wMissileLauncher, wSuperMissile, wDiffuser,
    wBallBomb, wPowerBomb 
};
enum Projectiles
{
    pPowerBeam, pWaveBeam = 10000, pPlasmaBeam, pSpazerBeam = 10001, pPulseBeam, pIceBeam, pRuptureBeam = 10002, pPhazonBeam,
    pTurret
};
enum Enemies
{
    eZoomer,eGeemer,
    eTurret
};
enum Items
{
    iWaveBeam, iPlasmaBeam, iSpazerBeam, iPulseBeam, iIceBeam, iRuptureBeam, iPhazonBeam,
    iMissileLauncher, iSuperMissile, iDiffuser,
    iVariaSuit, iGravitySuit, iCorruptionSuit,
    iMorphBall, iBallBomb, iPowerBomb, iSpeedBooster, iLightsear,
    iMissileExpansion, iSuperMissileExpansion, iPowerBombExpansion,
    iEnergyTank, iAccelTank,
    aSMissileAmmo, aLMissileAmmo, aSSuperMissileAmmo, aLSuperMissileAmmo, aPowerBombAmmo, 
    hHealthSmall, hHealthLarge, hHealthSuper
};
enum Doors
{
    dBlue, dRed, dGreen, dYellow
};
enum Blocks
{
    bBasic, bReform,
    bBomb, bPowerBomb, bMissile, bSuperMissile, bSpeedBooster
};
enum Other
{
    // Suits
    sPowerSuit, sVariaSuit, sGravitySuit, sCorruptionSuit
};
