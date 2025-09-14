.class public final synthetic Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda0;
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
    iput p1, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget p0, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/server/pm/ShortcutPackageItem;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    check-cast p1, Lcom/android/server/pm/ShortcutPackage;

    .line 13
    .line 14
    iget p0, p1, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 15
    .line 16
    if-lez p0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    iput p0, p1, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->scheduleSave()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p0, p1, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 27
    .line 28
    iget-object v0, p1, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 29
    .line 30
    iget v1, p1, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    .line 31
    .line 32
    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/ShortcutService;->injectGetResourcesForApplicationAsUser(ILjava/lang/String;)Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    new-instance v2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;

    .line 45
    .line 46
    invoke-direct {v2, v0, p0, v1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;-><init>(Landroid/content/res/Resources;Lcom/android/server/pm/ShortcutService;Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v2}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
