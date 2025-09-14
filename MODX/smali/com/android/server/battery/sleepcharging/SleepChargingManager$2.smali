.class public final Lcom/android/server/battery/sleepcharging/SleepChargingManager$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;


# direct methods
.method public constructor <init>(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$2;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$2;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    .line 3
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;

    .line 5
    const/16 v0, 0xc

    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 10
    return-void
.end method
