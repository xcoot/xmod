.class public final synthetic Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/sepunion/cover/StateNotifier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sepunion/cover/StateNotifier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "CoverManager_"

    .line 7
    .line 8
    const-string v1, "goToSleep by cover close after boot complete : mLcdOffDisabledByApp is false"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    const/16 v2, 0x14

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
