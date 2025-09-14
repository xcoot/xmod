.class public final Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final HEAD:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

.field public final TAIL:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

.field public final mValueFunction:Ljava/util/function/ToIntFunction;


# direct methods
.method public constructor <init>(Ljava/util/function/ToIntFunction;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;-><init>(Lcom/android/server/am/ProcessRecord;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->HEAD:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 11
    .line 12
    new-instance v2, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 13
    .line 14
    invoke-direct {v2, v1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;-><init>(Lcom/android/server/am/ProcessRecord;)V

    .line 15
    .line 16
    .line 17
    iput-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->TAIL:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 18
    .line 19
    iput-object v2, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 20
    .line 21
    iput-object v0, v2, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->mValueFunction:Ljava/util/function/ToIntFunction;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->HEAD:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->TAIL:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 6
    .line 7
    if-eq v1, p0, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    iput-object v3, v2, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 13
    .line 14
    iput-object v3, v1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 15
    .line 16
    :cond_0
    iput-object p0, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 19
    .line 20
    return-void
.end method
