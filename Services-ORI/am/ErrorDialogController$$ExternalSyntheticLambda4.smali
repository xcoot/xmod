.class public final synthetic Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ErrorDialogController;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ErrorDialogController;Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/ErrorDialogController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda4;->f$2:Ljava/util/function/Consumer;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/ErrorDialogController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda4;->f$2:Ljava/util/function/Consumer;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 17
    .line 18
    :goto_0
    if-ltz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/android/server/am/BaseErrorDialog;

    .line 25
    .line 26
    invoke-interface {p0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v0, v0, -0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method
