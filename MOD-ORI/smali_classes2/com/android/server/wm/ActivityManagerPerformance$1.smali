.class public final Lcom/android/server/wm/ActivityManagerPerformance$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityManagerPerformance;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityManagerPerformance;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance$1;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance$1;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    filled-new-array {v1}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {p1, v1}, Landroid/hardware/devicestate/DeviceState;->hasProperties([I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsFolded:Z

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance$1;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 15
    .line 16
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsFolded:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    sput-wide v0, Lcom/android/server/wm/ActivityManagerPerformance;->mFoldListenedTime:J

    .line 25
    .line 26
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string/jumbo v1, "onDisplayFoldChanged: state = "

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance$1;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 39
    .line 40
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsFolded:Z

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p0, " "

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const-string p1, "ActivityManagerPerformance"

    .line 58
    .line 59
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method
