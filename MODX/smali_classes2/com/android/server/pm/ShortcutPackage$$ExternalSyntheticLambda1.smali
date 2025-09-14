.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutPackage;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutPackage;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/ShortcutPackage;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda1;->f$1:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/ShortcutPackage;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda1;->f$1:J

    .line 4
    .line 5
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/16 v3, 0x64

    .line 15
    .line 16
    if-eq p0, v3, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, v0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    .line 20
    .line 21
    iget-wide v3, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    .line 22
    .line 23
    cmp-long p0, v3, v1

    .line 24
    .line 25
    if-lez p0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v1, "Restoring shortcut: "

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const-string v0, "ShortcutService"

    .line 47
    .line 48
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    const/16 p0, 0x40

    .line 52
    .line 53
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x0

    .line 57
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->setDisabledReason(I)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method
