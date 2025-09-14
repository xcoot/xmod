.class public Lcom/android/server/wm/DisplayArea;
.super Lcom/android/server/wm/WindowContainer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field mDisplayAreaAppearedSent:Z

.field final mFeatureId:I

.field private final mName:Ljava/lang/String;

.field mOrganizer:Landroid/window/IDisplayAreaOrganizer;

.field private final mOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

.field protected mSetIgnoreOrientationRequest:Z

.field protected mSetIgnoreOrientationRequestOverride:Z

.field private final mTmpConfiguration:Landroid/content/res/Configuration;

.field protected final mType:Lcom/android/server/wm/DisplayArea$Type;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/res/Configuration;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/DisplayArea;->mTmpConfiguration:Landroid/content/res/Configuration;

    .line 10
    .line 11
    const/4 v0, -0x2

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->setOverrideOrientation(I)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/android/server/wm/DisplayArea;->mName:Ljava/lang/String;

    .line 18
    .line 19
    iput p4, p0, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 20
    .line 21
    new-instance p2, Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 22
    .line 23
    invoke-direct {p2, p0}, Lcom/android/server/wm/WindowContainer$RemoteToken;-><init>(Lcom/android/server/wm/WindowContainer;)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/server/wm/DisplayArea;->mOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final asDisplayArea()Lcom/android/server/wm/DisplayArea;
    .locals 0

    .line 1
    return-object p0
.end method

.method public asTokens()Lcom/android/server/wm/DisplayArea$Tokens;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public canCreateRemoteAnimationTarget()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_REMOTE_WALLPAPER_ANIM:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 6
    .line 7
    const/16 v1, 0x2712

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    instance-of p0, p0, Lcom/android/server/wm/ActivityRecord;

    .line 14
    .line 15
    return p0
.end method

.method public commitPendingTransaction()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic compareTo(Lcom/android/server/wm/WindowContainer;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    iget-boolean p3, p0, Lcom/android/server/wm/DisplayArea;->mSetIgnoreOrientationRequest:Z

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    const-string/jumbo p3, "mSetIgnoreOrientationRequest=true"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ORIENTATION_POLICY:Z

    .line 15
    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    iget-boolean p3, p0, Lcom/android/server/wm/DisplayArea;->mSetIgnoreOrientationRequestOverride:Z

    .line 19
    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    const-string/jumbo p3, "mSetIgnoreOrientationRequestOverride=true"

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p2, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasRequestedOverrideConfiguration()Z

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    if-eqz p3, :cond_1

    .line 33
    .line 34
    const-string/jumbo p3, "overrideConfig="

    .line 35
    .line 36
    .line 37
    invoke-static {p2, p3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method public dumpChildDisplayArea(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 5

    .line 1
    const-string v0, "  "

    .line 2
    .line 3
    invoke-static {p2, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 12
    .line 13
    :goto_0
    if-ltz v1, :cond_3

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const-string v3, "* "

    .line 27
    .line 28
    invoke-static {p2, v3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->isOrganized()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    const-string v3, " (organized)"

    .line 53
    .line 54
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->isTaskDisplayArea()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/wm/DisplayArea;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/wm/DisplayArea;->dumpChildDisplayArea(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 71
    .line 72
    .line 73
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p4, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide p2

    .line 15
    const-wide v0, 0x10b00000001L

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    invoke-super {p0, p1, v0, v1, p4}, Lcom/android/server/wm/WindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 21
    .line 22
    .line 23
    const-wide v0, 0x10900000002L

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    iget-object p4, p0, Lcom/android/server/wm/DisplayArea;->mName:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-wide v0, 0x10800000004L

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->isTaskDisplayArea()Z

    .line 39
    .line 40
    .line 41
    move-result p4

    .line 42
    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    .line 46
    .line 47
    .line 48
    move-result-object p4

    .line 49
    if-eqz p4, :cond_1

    .line 50
    .line 51
    const/4 p4, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 p4, 0x0

    .line 54
    :goto_0
    const-wide v0, 0x10800000005L

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 60
    .line 61
    .line 62
    const-wide v0, 0x10500000006L

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    iget p4, p0, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 68
    .line 69
    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 70
    .line 71
    .line 72
    const-wide v0, 0x10800000007L

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->isOrganized()Z

    .line 78
    .line 79
    .line 80
    move-result p4

    .line 81
    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 82
    .line 83
    .line 84
    const-wide v0, 0x10800000008L

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getIgnoreOrientationRequest()Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public fillsParent()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public forAllActivities(Ljava/util/function/Consumer;Z)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    if-ne v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public forAllActivities(Ljava/util/function/Predicate;Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Z)Z

    move-result p0

    return p0
.end method

.method public forAllDisplayAreas(Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllDisplayAreas(Ljava/util/function/Consumer;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public forAllLeafTasks(Ljava/util/function/Consumer;Z)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    if-ne v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public forAllLeafTasks(Ljava/util/function/Predicate;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public forAllRootTasks(Ljava/util/function/Predicate;Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Predicate;Z)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public forAllTaskDisplayAreas(Ljava/util/function/Consumer;Z)V
    .locals 4

    .line 6
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    if-eq v0, v1, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz p2, :cond_1

    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ltz v1, :cond_4

    if-ge v1, v0, :cond_4

    .line 8
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 9
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;Z)V

    :cond_2
    if-eqz p2, :cond_3

    const/4 v2, -0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    :goto_1
    add-int/2addr v1, v2

    goto :goto_0

    :cond_4
    return-void
.end method

.method public forAllTaskDisplayAreas(Ljava/util/function/Predicate;Z)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz p2, :cond_1

    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-ltz v1, :cond_4

    if-ge v1, v0, :cond_4

    .line 3
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 4
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v3

    .line 5
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllTaskDisplayAreas(Ljava/util/function/Predicate;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    return v5

    :cond_2
    if-eqz p2, :cond_3

    const/4 v5, -0x1

    :cond_3
    add-int/2addr v1, v5

    goto :goto_0

    :cond_4
    return v2
.end method

.method public forAllTasks(Ljava/util/function/Predicate;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public bridge synthetic getAnimationLeash()Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeash()Landroid/view/SurfaceControl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getDisplayArea()Lcom/android/server/wm/DisplayArea;
    .locals 0

    .line 1
    return-object p0
.end method

.method public getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;
    .locals 4

    .line 1
    new-instance v0, Landroid/window/DisplayAreaInfo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 14
    .line 15
    iget v3, p0, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 16
    .line 17
    invoke-direct {v0, v1, v2, v3}, Landroid/window/DisplayAreaInfo;-><init>(Landroid/window/WindowContainerToken;II)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :cond_0
    iget v1, v1, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 31
    .line 32
    iput v1, v0, Landroid/window/DisplayAreaInfo;->rootDisplayAreaId:I

    .line 33
    .line 34
    iget-object v1, v0, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v1, p0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 41
    .line 42
    .line 43
    return-object v0
.end method

.method public bridge synthetic getFreezeSnapshotTarget()Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getFreezeSnapshotTarget()Landroid/view/SurfaceControl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getIgnoreOrientationRequest()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayArea;->mSetIgnoreOrientationRequest:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mIsIgnoreOrientationRequestDisabled:Z

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    .line 14
    .line 15
    const-string v0, "allow_ignore_orientation_request"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 27
    :goto_1
    return p0
.end method

.method public bridge synthetic getInsetsSourceProviders()Landroid/util/SparseArray;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getInsetsSourceProviders()Landroid/util/SparseArray;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getItemFromDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getItemFromDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    return-object v0
.end method

.method public getItemFromTaskDisplayAreas(Ljava/util/function/Function;Z)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    return-object v2

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    add-int/lit8 v1, v0, -0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-ltz v1, :cond_4

    .line 22
    .line 23
    if-ge v1, v0, :cond_4

    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 26
    .line 27
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/DisplayArea;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;Z)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    return-object v3

    .line 50
    :cond_2
    if-eqz p2, :cond_3

    .line 51
    .line 52
    const/4 v3, -0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    const/4 v3, 0x1

    .line 55
    :goto_1
    add-int/2addr v1, v3

    .line 56
    goto :goto_0

    .line 57
    :cond_4
    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayArea;->mName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getOrientation(I)I
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getOrientation(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayArea;->shouldIgnoreOrientationRequest(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 13
    .line 14
    const/4 p0, -0x2

    .line 15
    return p0

    .line 16
    :cond_0
    return p1
.end method

.method public bridge synthetic getParentSurfaceControl()Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public bridge synthetic getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getProtoFieldId()J
    .locals 2

    .line 1
    const-wide v0, 0x10b00000004L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    return-wide v0
.end method

.method public getRootTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public getStableRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSurfaceHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getSurfaceWidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getSyncState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 2
    .line 3
    return p0
.end method

.method public bridge synthetic getSyncTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public bridge synthetic getSyncTransactionCommitCallbackDepth()I
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransactionCommitCallbackDepth()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public handlesOrientationChangeFromDescendant(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayArea;->shouldIgnoreOrientationRequest(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->handlesOrientationChangeFromDescendant(I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public hasInsetsSourceProvider()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mInsetsSourceProviders:Landroid/util/SparseArray;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public isOrganized()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public isSelfAnimating(II)Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_REMOTE_WALLPAPER_ANIM:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 6
    .line 7
    const/16 v1, 0x2712

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->isSelfAnimating(II)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public isTaskDisplayArea()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public bridge synthetic makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public needRemoteWallpaperAnim()Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_REMOTE_WALLPAPER_ANIM:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 7
    .line 8
    const/16 v2, 0x2712

    .line 9
    .line 10
    if-ne v0, v2, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 19
    .line 20
    const v0, 0x43900

    .line 21
    .line 22
    .line 23
    and-int/2addr p0, v0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    return v1

    .line 27
    :cond_0
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_1
    return v1
.end method

.method public needsZBoost()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public bridge synthetic onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sget-object v2, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    .line 12
    .line 13
    sget-object v3, Lcom/android/server/wm/DisplayArea$Type;->BELOW_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x1

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    if-eq v0, v5, :cond_0

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    if-ne v1, v3, :cond_1

    .line 23
    .line 24
    move v0, v5

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v0, v4

    .line 27
    :goto_0
    const-string v1, "BELOW_TASKS can only contain BELOW_TASKS"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    if-ne v1, v2, :cond_3

    .line 34
    .line 35
    move v0, v5

    .line 36
    goto :goto_1

    .line 37
    :cond_3
    move v0, v4

    .line 38
    :goto_1
    const-string v1, "ABOVE_TASKS can only contain ABOVE_TASKS"

    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_2
    instance-of v0, p1, Lcom/android/server/wm/Task;

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    return-void

    .line 48
    :cond_4
    move v0, v5

    .line 49
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-ge v0, v1, :cond_b

    .line 54
    .line 55
    add-int/lit8 v1, v0, -0x1

    .line 56
    .line 57
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    if-eq p1, v1, :cond_5

    .line 66
    .line 67
    if-ne p1, v6, :cond_a

    .line 68
    .line 69
    :cond_5
    invoke-static {v1}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v6}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    if-eq v1, v3, :cond_7

    .line 78
    .line 79
    if-eq v6, v3, :cond_6

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_6
    move v7, v4

    .line 83
    goto :goto_5

    .line 84
    :cond_7
    :goto_4
    move v7, v5

    .line 85
    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v9, " must be above BELOW_TASKS"

    .line 94
    .line 95
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    invoke-static {v7, v8}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    if-ne v1, v2, :cond_9

    .line 106
    .line 107
    if-ne v6, v2, :cond_8

    .line 108
    .line 109
    goto :goto_6

    .line 110
    :cond_8
    move v1, v4

    .line 111
    goto :goto_7

    .line 112
    :cond_9
    :goto_6
    move v1, v5

    .line 113
    :goto_7
    new-instance v7, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v6, " must be below ABOVE_TASKS"

    .line 122
    .line 123
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-static {v1, v6}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_b
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->collectForDisplayAreaChange(Lcom/android/server/wm/DisplayArea;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mTmpConfiguration:Landroid/content/res/Configuration;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 13
    .line 14
    .line 15
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mTmpConfiguration:Landroid/content/res/Configuration;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->sendDisplayAreaInfoChanged()V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getOverrideOrientation()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, -0x2

    .line 9
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea;->shouldIgnoreOrientationRequest(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    :goto_1
    return p0
.end method

.method public bridge synthetic onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic onUnfrozen()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onUnfrozen()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-ne v1, p0, :cond_a

    .line 20
    .line 21
    invoke-static {v0}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x1

    .line 32
    sub-int/2addr v2, v3

    .line 33
    :goto_0
    const/4 v4, 0x0

    .line 34
    if-lez v2, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-static {v5}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    if-ne v5, v1, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move v2, v4

    .line 51
    :goto_1
    invoke-static {v0}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    move v5, v4

    .line 56
    :goto_2
    iget-object v6, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 57
    .line 58
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-ge v5, v6, :cond_4

    .line 63
    .line 64
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-static {v6}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    if-ne v6, v1, :cond_3

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    add-int/lit8 v5, v1, -0x1

    .line 85
    .line 86
    :goto_3
    move v6, v4

    .line 87
    move v1, v5

    .line 88
    :goto_4
    if-gt v1, v2, :cond_6

    .line 89
    .line 90
    iget-object v7, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 91
    .line 92
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    check-cast v7, Lcom/android/server/wm/WindowContainer;

    .line 97
    .line 98
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    if-eqz v7, :cond_5

    .line 103
    .line 104
    add-int/lit8 v6, v6, 0x1

    .line 105
    .line 106
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_7

    .line 114
    .line 115
    sub-int v0, v2, v6

    .line 116
    .line 117
    add-int/lit8 v5, v0, 0x1

    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_7
    sub-int/2addr v2, v6

    .line 121
    :goto_5
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    invoke-super {p0, v0, p2, v4}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    if-eqz p3, :cond_9

    .line 137
    .line 138
    if-eqz p2, :cond_9

    .line 139
    .line 140
    const p3, 0x7fffffff

    .line 141
    .line 142
    .line 143
    if-eq p1, p3, :cond_8

    .line 144
    .line 145
    const/high16 p3, -0x80000000

    .line 146
    .line 147
    if-ne p1, p3, :cond_9

    .line 148
    .line 149
    :cond_8
    invoke-virtual {p2, p1, p0, v3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 150
    .line 151
    .line 152
    :cond_9
    return-void

    .line 153
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 154
    .line 155
    new-instance p2, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string/jumbo p3, "positionChildAt: container="

    .line 158
    .line 159
    .line 160
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->getName()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p3

    .line 167
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string p3, " is not a child of container="

    .line 171
    .line 172
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getName()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string p0, " current parent="

    .line 183
    .line 184
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw p1
.end method

.method public providesMaxBounds()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    return-object p2

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz p3, :cond_1

    .line 15
    .line 16
    add-int/lit8 v1, v0, -0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v1, 0x0

    .line 20
    :goto_0
    if-ltz v1, :cond_4

    .line 21
    .line 22
    if-ge v1, v0, :cond_4

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/DisplayArea;->reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    :cond_2
    if-eqz p3, :cond_3

    .line 47
    .line 48
    const/4 v2, -0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    const/4 v2, 0x1

    .line 51
    :goto_1
    add-int/2addr v1, v2

    .line 52
    goto :goto_0

    .line 53
    :cond_4
    return-object p2
.end method

.method public removeImmediately()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V

    .line 3
    .line 4
    .line 5
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    :cond_0
    if-eqz p1, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    new-instance v1, Landroid/graphics/Rect;

    .line 49
    .line 50
    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method public sendDisplayAreaAppeared()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayArea;->mDisplayAreaAppearedSent:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    aget-boolean v1, v1, v2

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 31
    .line 32
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    const-wide v4, -0x3ea7b1952866c1b9L    # -6371755.368728227

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v7, 0x0

    .line 43
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    :try_start_0
    new-instance v1, Landroid/view/SurfaceControl;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-string v4, "DisplayAreaOrganizerController.onDisplayAreaAppeared"

    .line 53
    .line 54
    invoke-direct {v1, v3, v4}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-interface {v0, v3, v1}, Landroid/window/IDisplayAreaOrganizer;->onDisplayAreaAppeared(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    :catch_0
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayArea;->mDisplayAreaAppearedSent:Z

    .line 65
    .line 66
    :cond_2
    :goto_0
    return-void
.end method

.method public sendDisplayAreaInfoChanged()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayArea;->mDisplayAreaAppearedSent:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    aget-boolean v1, v1, v2

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 31
    .line 32
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    const-wide v3, -0xdf9b29faaa7cce4L    # -1.8588966594811073E241

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    const/4 v6, 0x0

    .line 43
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-interface {v0, p0}, Landroid/window/IDisplayAreaOrganizer;->onDisplayAreaInfoChanged(Landroid/window/DisplayAreaInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public sendDisplayAreaVanished(Landroid/window/IDisplayAreaOrganizer;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayArea;->mDisplayAreaAppearedSent:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    aget-boolean v0, v0, v1

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 36
    .line 37
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    const-wide v2, 0xdd1f4d4fc1b3a6fL

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x0

    .line 48
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-interface {p1}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    const-string p1, "DisplayAreaOrganizerController"

    .line 62
    .line 63
    const-string v0, "Organizer died before sending onDisplayAreaVanished"

    .line 64
    .line 65
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {p1, v0}, Landroid/window/IDisplayAreaOrganizer;->onDisplayAreaVanished(Landroid/window/DisplayAreaInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    :catch_0
    :goto_0
    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayArea;->mDisplayAreaAppearedSent:Z

    .line 78
    .line 79
    :cond_3
    :goto_1
    return-void
.end method

.method public setAlwaysOnTop(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setAlwaysOnTop(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const v0, 0x7fffffff

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p1, v0, p0, v1}, Lcom/android/server/wm/DisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public setIgnoreOrientationRequest(Z)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayArea;->mSetIgnoreOrientationRequest:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayArea;->mSetIgnoreOrientationRequest:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 15
    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iput-object v2, v0, Lcom/android/server/wm/DisplayContent;->mOrientationRequestingTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 23
    .line 24
    :cond_2
    if-nez p1, :cond_3

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Z)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0

    .line 33
    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 34
    .line 35
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 36
    .line 37
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const/4 v2, -0x2

    .line 44
    if-eq v0, v2, :cond_7

    .line 45
    .line 46
    const/4 v2, -0x1

    .line 47
    if-ne v0, v2, :cond_4

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_4
    if-eqz p1, :cond_6

    .line 51
    .line 52
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_5

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_5
    return v1

    .line 60
    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Z)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    return p0

    .line 67
    :cond_7
    :goto_1
    return v1
.end method

.method public setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;Z)V

    return-void
.end method

.method public setOrganizer(Landroid/window/IDisplayAreaOrganizer;Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 5
    invoke-virtual {v0}, Landroid/view/Display;->isTrusted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    .line 7
    iput-object p1, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea;->sendDisplayAreaVanished(Landroid/window/IDisplayAreaOrganizer;)V

    if-nez p2, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->sendDisplayAreaAppeared()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayArea;->mDisplayAreaAppearedSent:Z

    :cond_2
    :goto_0
    return-void

    .line 11
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Don\'t organize or trigger events for unavailable or untrusted display."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public shouldIgnoreOrientationRequest(I)Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ORIENTATION_POLICY:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayArea;->mSetIgnoreOrientationRequestOverride:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    const/16 v0, 0xe

    .line 12
    .line 13
    if-eq p1, v0, :cond_4

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    if-ne p1, v0, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getIgnoreOrientationRequest()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_4

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 26
    .line 27
    if-nez p0, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    new-instance p1, Lcom/android/server/wm/DisplayArea$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-direct {p1, v0}, Lcom/android/server/wm/DisplayArea$$ExternalSyntheticLambda0;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-eqz p0, :cond_3

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 44
    :cond_4
    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "@"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method
