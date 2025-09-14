.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutPackage;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$3:[Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/ArrayList;Lcom/android/server/pm/ShortcutService;[Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda30;->f$0:Lcom/android/server/pm/ShortcutPackage;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda30;->f$1:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda30;->f$2:Lcom/android/server/pm/ShortcutService;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda30;->f$3:[Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda30;->f$0:Lcom/android/server/pm/ShortcutPackage;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda30;->f$1:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda30;->f$2:Lcom/android/server/pm/ShortcutService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda30;->f$3:[Z

    .line 8
    .line 9
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget v0, v0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    .line 33
    .line 34
    invoke-virtual {v2, p1, v0}, Lcom/android/server/pm/ShortcutService;->injectIsActivityEnabledAndExported(Landroid/content/ComponentName;I)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    const/4 v0, 0x1

    .line 42
    aput-boolean v0, p0, p1

    .line 43
    .line 44
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 48
    .line 49
    :goto_0
    return-object p0
.end method
