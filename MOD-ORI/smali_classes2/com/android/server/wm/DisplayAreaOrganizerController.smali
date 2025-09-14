.class public final Lcom/android/server/wm/DisplayAreaOrganizerController;
.super Landroid/window/IDisplayAreaOrganizerController$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mNextTaskDisplayAreaFeatureId:I

.field public final mOrganizersByFeatureIds:Ljava/util/HashMap;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/window/IDisplayAreaOrganizerController$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x4e22

    .line 5
    .line 6
    iput v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mNextTaskDisplayAreaFeatureId:I

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 20
    .line 21
    return-void
.end method

.method public static createTaskDisplayArea(Lcom/android/server/wm/RootDisplayArea;Ljava/lang/String;I)Lcom/android/server/wm/TaskDisplayArea;
    .locals 7

    .line 31
    new-instance v6, Lcom/android/server/wm/TaskDisplayArea;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v3, p1

    move v4, p2

    .line 32
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/TaskDisplayArea;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;IZ)V

    .line 33
    new-instance p1, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/RootDisplayArea;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayArea;->getItemFromDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/DisplayArea;

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    .line 35
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 36
    invoke-virtual {p0, v6, p1}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    return-object v6

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Root must either contain TDA or DAG root="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final createTaskDisplayArea(Landroid/window/IDisplayAreaOrganizer;IILjava/lang/String;)Landroid/window/DisplayAreaAppearedInfo;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1
    const-string v4, "Can\'t find a parent DisplayArea with featureId="

    const-string v5, "createTaskDisplayArea untrusted displayId="

    const-string v6, "createTaskDisplayArea unknown displayId="

    const-string v7, "createTaskDisplayArea()"

    .line 2
    invoke-static {v7}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    int-to-long v7, v7

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 5
    :try_start_0
    iget-object v11, v0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    sget-object v12, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v13, 0x1

    aget-boolean v12, v12, v13

    if-eqz v12, :cond_0

    sget-object v14, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v19

    const/16 v17, 0x1

    const/16 v18, 0x0

    const-wide v15, 0x476e2f467f9b3523L    # 1.2538221157681851E36

    invoke-static/range {v14 .. v19}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 7
    :cond_0
    :goto_0
    iget-object v7, v0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 8
    invoke-virtual {v7, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 9
    iget-object v6, v7, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->isTrusted()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 10
    new-instance v2, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda1;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5}, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v7, v2}, Lcom/android/server/wm/DisplayArea;->getItemFromDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RootDisplayArea;

    if-nez v2, :cond_1

    .line 11
    new-instance v5, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda1;

    const/4 v6, 0x1

    invoke-direct {v5, v3, v6}, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v7, v5}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-nez v2, :cond_3

    if-eqz v5, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_3
    :goto_2
    iget v3, v0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mNextTaskDisplayAreaFeatureId:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mNextTaskDisplayAreaFeatureId:I

    .line 14
    new-instance v4, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    invoke-direct {v4, v0, v1, v3}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;-><init>(Lcom/android/server/wm/DisplayAreaOrganizerController;Landroid/window/IDisplayAreaOrganizer;I)V

    if-eqz v2, :cond_4

    move-object/from16 v6, p4

    .line 15
    invoke-static {v2, v6, v3}, Lcom/android/server/wm/DisplayAreaOrganizerController;->createTaskDisplayArea(Lcom/android/server/wm/RootDisplayArea;Ljava/lang/String;I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object/from16 v6, p4

    .line 16
    new-instance v2, Lcom/android/server/wm/TaskDisplayArea;

    iget-object v15, v5, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v5, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/16 v19, 0x1

    move-object v14, v2

    move-object/from16 v16, v7

    move-object/from16 v17, p4

    move/from16 v18, v3

    .line 17
    invoke-direct/range {v14 .. v19}, Lcom/android/server/wm/TaskDisplayArea;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;IZ)V

    const v6, 0x7fffffff

    .line 18
    invoke-virtual {v5, v2, v6}, Lcom/android/server/wm/TaskDisplayArea;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 19
    :goto_3
    const-string v5, "DisplayAreaOrganizerController.createTaskDisplayArea"

    .line 20
    invoke-virtual {v2, v1, v13}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;Z)V

    .line 21
    new-instance v1, Landroid/window/DisplayAreaAppearedInfo;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object v6

    new-instance v7, Landroid/view/SurfaceControl;

    .line 22
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-direct {v7, v2, v5}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    invoke-direct {v1, v6, v7}, Landroid/window/DisplayAreaAppearedInfo;-><init>(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V

    .line 23
    iget-object v0, v0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    .line 26
    :cond_5
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :goto_4
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 29
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    throw v0
.end method

.method public final deleteTaskDisplayArea(Landroid/window/WindowContainerToken;)V
    .locals 13

    .line 1
    const-string v0, "Attempt to delete TaskDisplayArea not created by organizer TaskDisplayArea="

    .line 2
    .line 3
    const-string v1, "deleteTaskDisplayArea()"

    .line 4
    .line 5
    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    int-to-long v1, v1

    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 18
    .line 19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 20
    .line 21
    .line 22
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    :try_start_1
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    .line 24
    .line 25
    const/4 v7, 0x1

    .line 26
    aget-boolean v6, v6, v7

    .line 27
    .line 28
    if-eqz v6, :cond_0

    .line 29
    .line 30
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 31
    .line 32
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v12

    .line 40
    const-wide v8, -0x1707a85b29a7c0e7L    # -4.549040835844609E197

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    const/4 v10, 0x1

    .line 46
    const/4 v11, 0x0

    .line 47
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iget-boolean v1, p1, Lcom/android/server/wm/TaskDisplayArea;->mCreatedByOrganizer:Z

    .line 74
    .line 75
    if-eqz v1, :cond_1

    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    .line 78
    .line 79
    iget p1, p1, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 80
    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    check-cast p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->destroy()V

    .line 92
    .line 93
    .line 94
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 96
    .line 97
    .line 98
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :catchall_1
    move-exception p0

    .line 103
    goto :goto_2

    .line 104
    :cond_1
    :try_start_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 105
    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p0

    .line 122
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 123
    .line 124
    const-string p1, "Can\'t resolve TaskDisplayArea from token"

    .line 125
    .line 126
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p0

    .line 130
    :goto_1
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 132
    .line 133
    .line 134
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 135
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 136
    .line 137
    .line 138
    throw p0
.end method

.method public final registerOrganizer(Landroid/window/IDisplayAreaOrganizer;I)Landroid/content/pm/ParceledListSlice;
    .locals 13

    .line 1
    const-string v0, "Replacing dead organizer for feature="

    .line 2
    .line 3
    const-string/jumbo v1, "registerOrganizer()"

    .line 4
    .line 5
    .line 6
    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    int-to-long v1, v1

    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 19
    .line 20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 21
    .line 22
    .line 23
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    :try_start_1
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    .line 25
    .line 26
    const/4 v7, 0x1

    .line 27
    aget-boolean v6, v6, v7

    .line 28
    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    invoke-interface {p1}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 40
    .line 41
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    filled-new-array {v6, v1}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v12

    .line 49
    const-wide v8, 0x3713507346c530fdL    # 2.165203315745264E-43

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    const/4 v10, 0x4

    .line 55
    const/4 v11, 0x0

    .line 56
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->destroy()V

    .line 87
    .line 88
    .line 89
    const-string v1, "DisplayAreaOrganizerController"

    .line 90
    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    :cond_1
    new-instance v0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    .line 107
    .line 108
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;-><init>(Lcom/android/server/wm/DisplayAreaOrganizerController;Landroid/window/IDisplayAreaOrganizer;I)V

    .line 109
    .line 110
    .line 111
    new-instance v1, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .line 115
    .line 116
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 117
    .line 118
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 119
    .line 120
    new-instance v12, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;

    .line 121
    .line 122
    const/4 v11, 0x1

    .line 123
    move-object v6, v12

    .line 124
    move-object v7, p0

    .line 125
    move v8, p2

    .line 126
    move-object v9, v1

    .line 127
    move-object v10, p1

    .line 128
    invoke-direct/range {v6 .. v11}, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/DisplayAreaOrganizerController;ILjava/util/List;Landroid/window/IDisplayAreaOrganizer;I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v12}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 132
    .line 133
    .line 134
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    .line 135
    .line 136
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 144
    .line 145
    invoke-direct {p0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 146
    .line 147
    .line 148
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 150
    .line 151
    .line 152
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 153
    .line 154
    .line 155
    return-object p0

    .line 156
    :goto_1
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 158
    .line 159
    .line 160
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 161
    :catchall_1
    move-exception p0

    .line 162
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 163
    .line 164
    .line 165
    throw p0
.end method

.method public final unregisterOrganizer(Landroid/window/IDisplayAreaOrganizer;)V
    .locals 12

    .line 1
    const-string/jumbo v0, "unregisterTaskOrganizer()"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    int-to-long v0, v0

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 17
    .line 18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 19
    .line 20
    .line 21
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    :try_start_1
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    .line 23
    .line 24
    const/4 v6, 0x1

    .line 25
    aget-boolean v5, v5, v6

    .line 26
    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    invoke-interface {p1}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 38
    .line 39
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    filled-new-array {v5, v0}, [Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    const-wide v7, -0xd17fa2edcfbcb43L    # -3.28056544953695E245

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    const/4 v9, 0x4

    .line 53
    const/4 v10, 0x0

    .line 54
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    new-instance v0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda0;

    .line 67
    .line 68
    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda0;-><init>(Landroid/window/IDisplayAreaOrganizer;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p0, v0}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 72
    .line 73
    .line 74
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    .line 77
    .line 78
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :catchall_1
    move-exception p0

    .line 83
    goto :goto_2

    .line 84
    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 86
    .line 87
    .line 88
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 89
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    .line 91
    .line 92
    throw p0
.end method
