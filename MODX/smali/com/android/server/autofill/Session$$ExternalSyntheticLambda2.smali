.class public final synthetic Lcom/android/server/autofill/Session$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget p0, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    check-cast p1, Lcom/android/server/autofill/Session;

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 8
    invoke-virtual {p1}, Lcom/android/server/autofill/Session;->removeFromService()V

    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object p0, p1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 14
    iget v0, p1, Lcom/android/server/autofill/Session;->id:I

    .line 16
    iget-object v4, p1, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 18
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 20
    monitor-enter p1

    .line 21
    :try_start_0
    const-string/jumbo v1, "logSaveShown()"

    .line 24
    invoke-virtual {p0, v0, v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isValidEventLocked(ILjava/lang/String;)Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 30
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 32
    new-instance v0, Landroid/service/autofill/FillEventHistory$Event;

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v10, 0x0

    .line 40
    const/4 v11, 0x0

    .line 41
    const/4 v12, 0x0

    .line 42
    const/4 v2, 0x3

    .line 43
    const/4 v3, 0x0

    .line 44
    move-object v1, v0

    .line 45
    invoke-direct/range {v1 .. v12}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;)V

    .line 48
    invoke-virtual {p0, v0}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    monitor-exit p1

    .line 55
    return-void

    .line 56
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p0

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
