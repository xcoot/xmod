.class public final synthetic Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerServiceExt;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/android/server/am/ProcessRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerServiceExt;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/am/ProcessRecord;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/am/ProcessRecord;

    .line 11
    .line 12
    check-cast p1, Landroid/os/RemoteCallback;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-static {p1, v0, v1, p0}, Lcom/android/server/am/ActivityManagerServiceExt;->updateNeverKill(Landroid/os/RemoteCallback;ZLjava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/am/ProcessRecord;

    .line 29
    .line 30
    check-cast p1, Landroid/os/RemoteCallback;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    invoke-static {p1, v0, v1, p0}, Lcom/android/server/am/ActivityManagerServiceExt;->updateNeverKill(Landroid/os/RemoteCallback;ZLjava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
