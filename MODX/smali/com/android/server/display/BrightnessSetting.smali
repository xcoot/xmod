.class public final Lcom/android/server/display/BrightnessSetting;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBrightness:F

.field public final mHandler:Lcom/android/server/display/BrightnessSetting$1;

.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

.field public final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field public final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

.field public mUserSerial:I


# direct methods
.method public constructor <init>(ILcom/android/server/display/PersistentDataStore;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayManagerService$SyncRoot;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/display/BrightnessSetting$1;

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, p0, v1}, Lcom/android/server/display/BrightnessSetting$1;-><init>(Lcom/android/server/display/BrightnessSetting;Landroid/os/Looper;)V

    .line 13
    iput-object v0, p0, Lcom/android/server/display/BrightnessSetting;->mHandler:Lcom/android/server/display/BrightnessSetting$1;

    .line 15
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 17
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/android/server/display/BrightnessSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 22
    iput-object p2, p0, Lcom/android/server/display/BrightnessSetting;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 24
    iput-object p3, p0, Lcom/android/server/display/BrightnessSetting;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 26
    iput p1, p0, Lcom/android/server/display/BrightnessSetting;->mUserSerial:I

    .line 28
    iget-object p3, p3, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 30
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 35
    if-eqz p3, :cond_2

    .line 37
    invoke-virtual {p3}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v1, 0x0

    .line 45
    iget-object p3, p3, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 47
    invoke-virtual {p2, p3, v1}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    .line 50
    move-result-object p2

    .line 51
    if-nez p2, :cond_1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p2, p1}, Lcom/android/server/display/PersistentDataStore$DisplayState;->getBrightness(I)F

    .line 57
    move-result v0

    .line 58
    :cond_2
    :goto_0
    iput v0, p0, Lcom/android/server/display/BrightnessSetting;->mBrightness:F

    .line 60
    iput-object p4, p0, Lcom/android/server/display/BrightnessSetting;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 62
    return-void
.end method


# virtual methods
.method public final setBrightness(F)V
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const-string p0, "BrightnessSetting"

    .line 9
    const-string p1, "Attempting to set invalid brightness"

    .line 11
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessSetting;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget v1, p0, Lcom/android/server/display/BrightnessSetting;->mBrightness:F

    .line 20
    cmpl-float v1, p1, v1

    .line 22
    if-eqz v1, :cond_1

    .line 24
    iget-object v1, p0, Lcom/android/server/display/BrightnessSetting;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 26
    iget-object v2, p0, Lcom/android/server/display/BrightnessSetting;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 28
    iget-object v2, v2, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 30
    iget v3, p0, Lcom/android/server/display/BrightnessSetting;->mUserSerial:I

    .line 32
    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/display/PersistentDataStore;->setBrightness(Lcom/android/server/display/DisplayDevice;FI)V

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/display/BrightnessSetting;->mBrightness:F

    .line 40
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 43
    move-result p1

    .line 44
    iget-object v1, p0, Lcom/android/server/display/BrightnessSetting;->mHandler:Lcom/android/server/display/BrightnessSetting$1;

    .line 46
    const/4 v2, 0x1

    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 51
    move-result-object p1

    .line 52
    iget-object p0, p0, Lcom/android/server/display/BrightnessSetting;->mHandler:Lcom/android/server/display/BrightnessSetting$1;

    .line 54
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 57
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0
.end method
