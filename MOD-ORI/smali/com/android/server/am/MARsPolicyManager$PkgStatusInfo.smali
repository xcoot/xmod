.class public final Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public currentLevel:I

.field public disableReason:I

.field public disableType:I

.field public fasType:I

.field public isDisabled:Z

.field public isFASEnabled:Z

.field public isInRestrictedBucket:Z

.field public maxLevel:I

.field public final name:Ljava/lang/String;

.field public possibleLevel:I

.field public state:I

.field public final uid:I

.field public final userId:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    .line 5
    .line 6
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    .line 7
    .line 8
    iput p2, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->fasType:I

    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    iput p2, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->state:I

    .line 15
    .line 16
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I

    .line 17
    .line 18
    iput p2, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->possibleLevel:I

    .line 19
    .line 20
    iput p2, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->maxLevel:I

    .line 21
    .line 22
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFASEnabled:Z

    .line 23
    .line 24
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isInRestrictedBucket:Z

    .line 25
    .line 26
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z

    .line 27
    .line 28
    const/4 p2, -0x1

    .line 29
    iput p2, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableType:I

    .line 30
    .line 31
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableReason:I

    .line 32
    .line 33
    return-void
.end method
