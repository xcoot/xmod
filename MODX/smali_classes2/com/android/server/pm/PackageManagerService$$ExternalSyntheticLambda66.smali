.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageSetting;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageSetting;ILjava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;->f$0:Lcom/android/server/pm/PackageSetting;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;->f$2:Ljava/util/ArrayList;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;->f$0:Lcom/android/server/pm/PackageSetting;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;->f$1:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;->f$2:Ljava/util/ArrayList;

    .line 6
    .line 7
    check-cast p1, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getClassName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageSetting;->restoreComponentLPw(ILjava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getClassName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
