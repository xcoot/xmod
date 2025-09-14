.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Set;Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda28;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda28;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda28;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda28;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>([Ljava/io/File;Landroid/util/ArraySet;Ljava/io/File;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda28;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda28;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda28;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda28;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda28;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda28;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/pm/ShortcutPackage;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda28;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/util/Set;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda28;->f$2:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Ljava/util/function/Consumer;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->fromAppSearch()Lcom/android/internal/infra/AndroidFuture;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;

    .line 23
    .line 24
    const/4 v4, 0x4

    .line 25
    invoke-direct {v3, v0, v1, p0, v4}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v3}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda28;->f$0:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, [Ljava/io/File;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda28;->f$1:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Landroid/util/ArraySet;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda28;->f$2:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Ljava/io/File;

    .line 43
    .line 44
    :try_start_0
    array-length v2, v0

    .line 45
    const/4 v3, 0x0

    .line 46
    :goto_0
    if-ge v3, v2, :cond_2

    .line 47
    .line 48
    aget-object v4, v0, v3

    .line 49
    .line 50
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-nez v5, :cond_0

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-nez v5, :cond_1

    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    const-string v0, "Failed to remove dangling bitmap files: "

    .line 74
    .line 75
    invoke-static {p0, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    new-instance v0, Ljava/lang/Exception;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v1, "ShortcutService"

    .line 85
    .line 86
    invoke-static {v1, p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .line 88
    .line 89
    :cond_2
    return-void

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
