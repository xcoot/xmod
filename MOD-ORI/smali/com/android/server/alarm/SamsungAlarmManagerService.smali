.class public final Lcom/android/server/alarm/SamsungAlarmManagerService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/alarm/SamsungAlarmManagerService$SamsungAlarmHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string/jumbo v1, "com.samsung.android.action.ALARM_CLOCK_CHANGED"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/high16 v1, 0x20000000

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/android/server/alarm/SamsungAlarmManagerService;->ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/alarm/SamsungAlarmManagerService$SamsungAlarmHandler;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/alarm/SamsungAlarmManagerService$SamsungAlarmHandler;-><init>(Lcom/android/server/alarm/SamsungAlarmManagerService;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/alarm/SamsungAlarmManagerService;->mHandler:Lcom/android/server/alarm/SamsungAlarmManagerService$SamsungAlarmHandler;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/alarm/SamsungAlarmManagerService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-string p0, "SamsungAlarmManager"

    .line 14
    .line 15
    const-string p1, "SamsungAlarmManagerService created."

    .line 16
    .line 17
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void
.end method
