.class public final Lcom/android/server/battery/MultiSbpController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBattCallback:Lcom/android/server/BatteryService$BattCallbackImpl;

.field public final mBatteryConnectionChecker:Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

.field public mBatteryConnectionProcessor:Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/BatteryService$BattCallbackImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/battery/MultiSbpController;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/battery/MultiSbpController;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/battery/MultiSbpController;->mBattCallback:Lcom/android/server/BatteryService$BattCallbackImpl;

    .line 9
    .line 10
    new-instance p1, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

    .line 11
    .line 12
    invoke-direct {p1}, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/battery/MultiSbpController;->mBatteryConnectionChecker:Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

    .line 16
    .line 17
    return-void
.end method
