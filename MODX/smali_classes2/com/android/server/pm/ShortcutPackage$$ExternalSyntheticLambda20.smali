.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutPackage;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutPackage;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/pm/ShortcutPackage;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda20;->f$1:Z

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda20;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/pm/ShortcutPackage;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda20;->f$1:Z

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda20;->f$2:I

    .line 6
    .line 7
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p1, v2}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    .line 14
    .line 15
    .line 16
    const/16 v2, 0x21

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 19
    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/16 v1, 0x40

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->setDisabledReason(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object p0, v0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 46
    .line 47
    .line 48
    iget-object p0, v0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    const-string p0, "android.__dummy__"

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_1

    .line 72
    .line 73
    const/4 p0, 0x0

    .line 74
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->setActivity(Landroid/content/ComponentName;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    return-void
.end method
