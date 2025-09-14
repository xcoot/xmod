.class public final synthetic Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerServiceExt;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/android/server/am/ProcessRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerServiceExt;ZLjava/lang/String;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda11;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda11;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda11;->f$3:Lcom/android/server/am/ProcessRecord;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda11;->f$1:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda11;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda11;->f$3:Lcom/android/server/am/ProcessRecord;

    .line 8
    .line 9
    check-cast p1, Landroid/os/RemoteCallback;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 15
    .line 16
    invoke-static {p1, v1, v2, p0}, Lcom/android/server/am/ActivityManagerServiceExt;->updateNeverKill(Landroid/os/RemoteCallback;ZLjava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
