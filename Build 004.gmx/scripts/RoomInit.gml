// Runs in "Room Start" of eId as well as "Create" event of oLE.
// 1: Determine weather type by region.
scEIDGetRegion();

// 2: Build vector collisions.
if (object_index = eId)
{
    switch (room)
    {
        // NOTE that some rooms initialize their vector paths from the room creation code.
        // - Barria Tundra -
        case BarriaLandingSite:
            vector_world_add(oVectorLine);
            vector_path_add(oVectorLine,BarriaLandingSitePath1,0,0,0);
            break;
        case BarriaIntWest:
            vector_world_add(oVectorLine);
            vector_path_add(oVectorLine,BarriaIntWestPath1,0,0,0);
            break;
        case BarriaCacheMissile:
            vector_world_add(oVectorLine);
            vector_path_add(oVectorLine,BarriaCacheMissilePath1,0,0,0);
            vector_path_add(oVectorLine,BarriaCacheMissilePath2,0,0,0);
            break;
        case BarriaCacheMorphBall:
            vector_world_add(oVectorLine);
            vector_path_add(oVectorLine,BarriaCacheMorphBallPath1,0,0,0);
            vector_path_add(oVectorLine,BarriaCacheMorphBallPath2,0,0,0);
            break;
    }
}

// 3: Set ambient brightness of light engine.
// LightAlphaMult of 1 for outdoor areas, 0.75 for indoor areas.
// The lower the number, the brighter the room (this represents the alpha of the dark layer).
else
{
    switch (room)
    {
        default: eId.LightAlphaMult = 1; break;
        case BarriaLandingSite:
        case BarriaIntWest:
        case BarriaCacheMissile:
            eId.LightAlphaMult = 1; break;
        case BarriaCacheMorphBall:
            eId.LightAlphaMult = 0.75; break;
    }
}

// 4: Set the debug mode grid foreground.
background_index[7] = bgrMapGrid;
background_foreground[7] = true;

// 5: Set the AI movement planning grid to fit the size of the room.
if (object_index = oLE) exit; // If this script is run from the light engine, don't use this code!
if (instance_exists(oActor))
{
    aigrid = mp_grid_create(0,0,room_width/aigridcellsize,room_height/aigridcellsize,aigridcellsize,aigridcellsize);
    aipath = path_add();
    mp_grid_add_instances(aigrid,oBlockParent,1);
}
