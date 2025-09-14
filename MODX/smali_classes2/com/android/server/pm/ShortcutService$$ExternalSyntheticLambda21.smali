.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService$LocalService;Lcom/android/internal/infra/AndroidFuture;Lcom/android/server/pm/ShortcutPackage;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda21;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda21;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda21;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda21;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Landroid/content/IntentFilter;Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda21;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda21;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda21;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda21;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda21;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda21;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/pm/ShortcutService$LocalService;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda21;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lcom/android/internal/infra/AndroidFuture;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda21;->f$2:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lcom/android/server/pm/ShortcutPackage;

    .line 17
    .line 18
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutIconParcelFileDescriptor(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)Landroid/os/ParcelFileDescriptor;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v1, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda21;->f$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Ljava/util/List;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda21;->f$1:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Landroid/content/IntentFilter;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda21;->f$2:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Ljava/lang/String;

    .line 42
    .line 43
    check-cast p1, Lcom/android/server/pm/ShortcutPackage;

    .line 44
    .line 45
    invoke-virtual {p1, v1, p0}, Lcom/android/server/pm/ShortcutPackage;->getMatchingShareTargets(Landroid/content/IntentFilter;Ljava/lang/String;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
