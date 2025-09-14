.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda37;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/ShortcutPackage;

.field public final synthetic f$1:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Collection;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda37;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda37;->f$0:Lcom/android/server/pm/ShortcutPackage;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda37;->f$1:Ljava/util/Collection;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda37;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda37;->f$0:Lcom/android/server/pm/ShortcutPackage;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda37;->f$1:Ljava/util/Collection;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->fromAppSearch()Lcom/android/internal/infra/AndroidFuture;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda52;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-direct {v2, v0, p0, v3}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda52;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Collection;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda37;->f$0:Lcom/android/server/pm/ShortcutPackage;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda37;->f$1:Ljava/util/Collection;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->fromAppSearch()Lcom/android/internal/infra/AndroidFuture;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda52;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-direct {v2, v0, p0, v3}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda52;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Collection;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

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
