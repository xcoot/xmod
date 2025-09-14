.class public final synthetic Lcom/android/server/vibrator/VibratorController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/vibrator/VibratorController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/vibrator/VibratorController;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/vibrator/VibratorController;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/vibrator/VibratorController$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/vibrator/VibratorController;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorController$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    .line 5
    check-cast p1, Landroid/os/IVibratorStateListener;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-interface {p1, p0}, Landroid/os/IVibratorStateListener;->onVibrating(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string p1, "VibratorController"

    .line 16
    .line 17
    const-string v0, "Vibrator state listener failed to call"

    .line 18
    .line 19
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method
