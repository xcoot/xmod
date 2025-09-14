.class public final synthetic Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerServiceExt;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerServiceExt;ILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 6
    iput p2, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda2;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    .line 10
    iput-boolean p4, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda2;->f$3:Z

    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 3
    iget v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda2;->f$1:I

    .line 5
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    .line 7
    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda2;->f$3:Z

    .line 9
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 16
    if-ne v1, v3, :cond_0

    .line 18
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 26
    iput-boolean p0, p1, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    .line 28
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mCb4Process:Ljava/util/Optional;

    .line 30
    new-instance v3, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda11;

    .line 32
    invoke-direct {v3, v0, p0, v2, p1}, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;ZLjava/lang/String;Lcom/android/server/am/ProcessRecord;)V

    .line 35
    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 38
    :cond_0
    return-void
.end method
