.class public abstract Lcom/android/server/ibs/sleepmode/SleepModeLogger$SleepModeLoggerHolder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INSTANCE:Lcom/android/server/ibs/sleepmode/SleepModeLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->mIsUsed:Z

    .line 8
    .line 9
    new-instance v1, Landroid/util/LocalLog;

    .line 10
    .line 11
    const/16 v2, 0xbb8

    .line 12
    .line 13
    invoke-direct {v1, v2}, Landroid/util/LocalLog;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object v1, v0, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->mSleepModeLog:Landroid/util/LocalLog;

    .line 17
    .line 18
    sput-object v0, Lcom/android/server/ibs/sleepmode/SleepModeLogger$SleepModeLoggerHolder;->INSTANCE:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 19
    .line 20
    return-void
.end method
