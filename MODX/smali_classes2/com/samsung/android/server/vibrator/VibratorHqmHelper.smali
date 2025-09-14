.class public final Lcom/samsung/android/server/vibrator/VibratorHqmHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final BIG_DATA:[Ljava/lang/String;

.field public static sInstance:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;


# instance fields
.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mSemHqmManager:Landroid/os/SemHqmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "FW_TVPC"

    .line 2
    .line 3
    const-string v1, "FW_EVPC"

    .line 4
    .line 5
    const-string v2, "FW_RVPC"

    .line 6
    .line 7
    const-string v3, "FW_AVPC"

    .line 8
    .line 9
    const-string v4, "FW_NVPC"

    .line 10
    .line 11
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->BIG_DATA:[Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method
