.class public final Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public adjLabelIndex:I

.field public procState:I

.field public processName:Ljava/lang/String;

.field public pssInMb:I

.field public swapPssInMb:I

.field public writebackInMb:I


# virtual methods
.method public final toJsonArray()Lorg/json/JSONArray;
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;->processName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;->adjLabelIndex:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;->procState:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;->pssInMb:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 24
    .line 25
    .line 26
    iget v1, p0, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;->swapPssInMb:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 29
    .line 30
    .line 31
    iget p0, p0, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;->writebackInMb:I

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 34
    .line 35
    .line 36
    return-object v0
.end method
