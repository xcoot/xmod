.class public final synthetic Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/util/function/TriConsumer;

.field public final synthetic f$1:Landroid/util/ArrayMap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/util/function/TriConsumer;Landroid/util/ArrayMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/util/function/TriConsumer;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda2;->f$1:Landroid/util/ArrayMap;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/util/function/TriConsumer;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda2;->f$1:Landroid/util/ArrayMap;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Ljava/io/File;

    .line 30
    .line 31
    invoke-interface {v0, v1, p1, p0}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method
