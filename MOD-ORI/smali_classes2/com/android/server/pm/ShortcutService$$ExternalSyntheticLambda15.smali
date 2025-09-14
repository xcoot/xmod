.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/pm/ShortcutService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda15;->f$1:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/pm/ShortcutService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda15;->f$1:Ljava/util/ArrayList;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/pm/ShortcutPackageItem;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, p1, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    .line 11
    .line 12
    iget-boolean v1, v1, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p1, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 18
    .line 19
    iget p1, p1, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    .line 20
    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(ILjava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-static {p1, v1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method
