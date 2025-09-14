.class public final synthetic Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$1:Lcom/android/server/pm/ShortcutUser;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/pm/ShortcutUser;

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda1;->f$2:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/pm/ShortcutUser;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda1;->f$2:Z

    .line 4
    .line 5
    check-cast p1, Ljava/io/File;

    .line 6
    .line 7
    invoke-static {v0, p1, p0}, Lcom/android/server/pm/ShortcutPackage;->loadFromFile(Lcom/android/server/pm/ShortcutUser;Ljava/io/File;Z)Lcom/android/server/pm/ShortcutPackage;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    iget-object p1, v0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1, v0, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
