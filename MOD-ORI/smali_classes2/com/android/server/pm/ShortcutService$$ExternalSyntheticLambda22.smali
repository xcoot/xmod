.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;->f$2:I

    iput-object p2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;->f$1:Ljava/lang/Object;

    iput p3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;->f$2:I

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Ljava/util/List;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;->f$1:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lcom/android/internal/infra/AndroidFuture;

    .line 15
    .line 16
    check-cast p1, Ljava/util/List;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v2, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda7;

    .line 25
    .line 26
    invoke-direct {v2, v0}, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda7;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda13;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda13;-><init>(ILjava/util/List;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;->f$0:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Lcom/android/server/pm/ShortcutService;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;->f$1:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v1, Lcom/android/server/pm/ShortcutUser;

    .line 56
    .line 57
    iget p0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;->f$2:I

    .line 58
    .line 59
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    new-instance v2, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda0;

    .line 70
    .line 71
    const/4 v3, 0x1

    .line 72
    invoke-direct {v2, v3}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda0;-><init>(I)V

    .line 73
    .line 74
    .line 75
    new-instance v3, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda6;

    .line 76
    .line 77
    invoke-direct {v3, p0, v0, v2}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda6;-><init>(ILjava/lang/String;Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda0;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    .line 81
    .line 82
    .line 83
    iget-object p0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 84
    .line 85
    const/4 p1, 0x1

    .line 86
    invoke-virtual {v1, p0, p1}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
