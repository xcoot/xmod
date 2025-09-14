.class public final Lcom/android/server/am/KillPolicyManager$SwappinessController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCurrentValue:I

.field public final mDefaultValue:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$SwappinessController;->getSwappinessFromProc()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mDefaultValue:I

    .line 9
    .line 10
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mCurrentValue:I

    .line 11
    .line 12
    const-string p0, "SwappinessController() - default value: "

    .line 13
    .line 14
    const-string v1, "ActivityManager"

    .line 15
    .line 16
    invoke-static {v0, p0, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static getSwappinessFromProc()I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x2020

    .line 3
    .line 4
    filled-new-array {v1}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x1

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    aput-wide v3, v2, v0

    .line 14
    .line 15
    const-string v3, "/proc/sys/vm/swappiness"

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-static {v3, v1, v4, v2, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 19
    .line 20
    .line 21
    aget-wide v0, v2, v0

    .line 22
    .line 23
    long-to-int v0, v0

    .line 24
    return v0
.end method
