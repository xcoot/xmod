.class public final Lcom/android/server/wm/AppCompatDeviceStateQuery;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AppCompatDeviceStateQuery;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final isDisplayFullScreenAndInPosture(Z)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AppCompatDeviceStateQuery;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    if-eqz p0, :cond_3

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->inTransition()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_3

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 18
    .line 19
    sget-object v1, Lcom/android/server/wm/DeviceStateController$DeviceState;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 22
    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 27
    .line 28
    if-eq v1, v2, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    if-ne v2, v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mTabletopRotations:Ljava/util/Set;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    .line 36
    .line 37
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 38
    .line 39
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast v1, Landroid/util/ArraySet;

    .line 44
    .line 45
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-ne p1, p0, :cond_3

    .line 50
    .line 51
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    const/4 p1, 0x1

    .line 56
    if-ne p0, p1, :cond_3

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 60
    :goto_1
    return p1
.end method

.method public final isDisplayFullScreenAndSeparatingHinge()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AppCompatDeviceStateQuery;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 18
    .line 19
    sget-object v2, Lcom/android/server/wm/DeviceStateController$DeviceState;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 20
    .line 21
    if-eq v1, v2, :cond_0

    .line 22
    .line 23
    sget-object v2, Lcom/android/server/wm/DeviceStateController$DeviceState;->OPEN:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 24
    .line 25
    if-ne v1, v2, :cond_1

    .line 26
    .line 27
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mIsDisplayAlwaysSeparatingHinge:Z

    .line 28
    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    const/4 v0, 0x1

    .line 36
    if-ne p0, v0, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    :goto_0
    return v0
.end method
