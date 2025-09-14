.class public final Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAttributionTag:Ljava/lang/String;

.field public final mHash:I

.field public final mOp:Landroid/app/AppOpsManager$HistoricalOp;

.field public final mPackageName:Ljava/lang/String;

.field public final mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$HistoricalOp;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mPackageName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mAttributionTag:Ljava/lang/String;

    .line 7
    .line 8
    iput p4, p0, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mUid:I

    .line 9
    .line 10
    iput-object p3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    sget p2, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    .line 17
    .line 18
    add-int/2addr p1, p2

    .line 19
    const p2, 0x7fffffff

    .line 20
    .line 21
    .line 22
    and-int/2addr p1, p2

    .line 23
    rem-int/lit8 p1, p1, 0x64

    .line 24
    .line 25
    iput p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mHash:I

    .line 26
    .line 27
    return-void
.end method
