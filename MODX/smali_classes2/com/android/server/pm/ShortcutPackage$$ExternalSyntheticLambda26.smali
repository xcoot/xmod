.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutPackage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutPackage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda26;->f$0:Lcom/android/server/pm/ShortcutPackage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda26;->f$0:Lcom/android/server/pm/ShortcutPackage;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->fromAppSearch()Lcom/android/internal/infra/AndroidFuture;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda10;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, v2, p0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda10;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    .line 14
    .line 15
    .line 16
    return-void
.end method
