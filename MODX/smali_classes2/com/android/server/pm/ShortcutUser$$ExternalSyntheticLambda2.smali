.class public final synthetic Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutUser;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutUser;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/ShortcutUser;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda2;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/ShortcutUser;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda2;->f$2:Z

    .line 6
    .line 7
    check-cast p1, Ljava/io/File;

    .line 8
    .line 9
    invoke-static {p1, v0, v1, p0}, Lcom/android/server/pm/ShortcutLauncher;->loadFromFile(Ljava/io/File;Lcom/android/server/pm/ShortcutUser;IZ)Lcom/android/server/pm/ShortcutLauncher;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 16
    .line 17
    iget-object p1, v0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    .line 18
    .line 19
    iget v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
