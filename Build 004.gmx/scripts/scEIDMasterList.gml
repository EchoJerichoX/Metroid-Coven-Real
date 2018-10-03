// This script keeps track of all the unique IDs.
// Each enum has an implicit value, so assigning numbers is no longer necessary.
// The ones that do not have implicit values are circumventing a "duplicate case" bug.

enum Weapons 
{
    // Note: Nearly all of these, with the exception of the Rupture Beam particles, also
    //   serve as the enum for the projectile created when the weapon is used.
    // - Player Beams -
    wPowerBeam,
    wWaveBeam,
    wPlasmaBeam,
    wSpazerBeam,
    wPulseBeam,
    wIceBeam,
    wRuptureBeam,
    wPhazonBeam,
    // - Player Secondary Weapons -
    wMissileLauncher,
    wSuperMissile,
    wDiffuser,
    // - Player Addons -
    wBallBomb,
    wPowerBomb
};
enum Projectiles
{
    pRuptureBeamParticle, pPhazonBeam,
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
