.class public final Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final future:Ljava/util/concurrent/CompletableFuture;

.field public final token:Landroid/os/IBinder;

.field public final uid:I

.field public final uptimeMs:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->future:Ljava/util/concurrent/CompletableFuture;

    .line 10
    .line 11
    new-instance v0, Landroid/os/Binder;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->token:Landroid/os/IBinder;

    .line 17
    .line 18
    iput p1, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->uid:I

    .line 19
    .line 20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iput-wide v0, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->uptimeMs:J

    .line 25
    .line 26
    return-void
.end method
