.class public final Lcom/android/server/notification/SmartAlertController$3;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/SmartAlertController;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/SmartAlertController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/notification/SmartAlertController;->mMotionRegistered:Z

    .line 4
    .line 5
    const-string v2, "SmartAlertController"

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    iget-boolean v1, v0, Lcom/android/server/notification/SmartAlertController;->mMotionEnabled:Z

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionListener:Lcom/android/server/notification/SmartAlertController$1;

    .line 18
    .line 19
    const/4 v3, 0x4

    .line 20
    invoke-virtual {v1, v0, v3}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;I)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMotionRegistered:Z

    .line 27
    .line 28
    const-string p0, "SmartAlert - registerListener"

    .line 29
    .line 30
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string p0, "SmartAlert - mSmartAlertMotionManager is null"

    .line 35
    .line 36
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-string p0, "SmartAlert - already registered or Setting disabled"

    .line 41
    .line 42
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method
