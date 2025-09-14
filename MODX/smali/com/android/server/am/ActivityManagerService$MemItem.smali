.class public final Lcom/android/server/am/ActivityManagerService$MemItem;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final hasActivities:Z

.field public final id:I

.field public final isProc:Z

.field public final label:Ljava/lang/String;

.field public final mPrivateDirty:J

.field public final mRss:J

.field public final pss:J

.field public final shortLabel:Ljava/lang/String;

.field public subitems:Ljava/util/ArrayList;

.field public final swapPss:J

.field public final userId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJI)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->isProc:Z

    .line 14
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->label:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->shortLabel:Ljava/lang/String;

    .line 16
    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    .line 17
    iput-wide p5, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->swapPss:J

    .line 18
    iput-wide p7, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->mRss:J

    .line 19
    iput-wide p9, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->mPrivateDirty:J

    .line 20
    iput p11, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->id:I

    .line 21
    iput v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->userId:I

    .line 22
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->hasActivities:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJIIZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->isProc:Z

    .line 3
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->label:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->shortLabel:Ljava/lang/String;

    .line 5
    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    .line 6
    iput-wide p5, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->swapPss:J

    .line 7
    iput-wide p7, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->mRss:J

    .line 8
    iput-wide p9, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->mPrivateDirty:J

    .line 9
    iput p11, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->id:I

    .line 10
    iput p12, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->userId:I

    .line 11
    iput-boolean p13, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->hasActivities:Z

    return-void
.end method
