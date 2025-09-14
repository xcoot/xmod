.class public Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mEntries:[Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

.field public mNextIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x10

    .line 6
    new-array v0, v0, [Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    .line 8
    iput-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mEntries:[Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    .line 13
    return-void
.end method
