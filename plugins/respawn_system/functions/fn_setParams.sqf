
// =============================================================================
//  Enable respawn
// =============================================================================
switch (_this select 0) do {
    case 0: { mission_allow_respawn = false };
    case 1: { mission_allow_respawn = true };
};

// =============================================================================
//  Player lives
// =============================================================================
mission_player_lives = (_this select 1);

// =============================================================================
//  Respawn per objective
// =============================================================================
mission_respawn_objective = (_this select 2);

// =============================================================================
