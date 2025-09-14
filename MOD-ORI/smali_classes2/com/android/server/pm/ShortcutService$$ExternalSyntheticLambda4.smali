.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;
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
    iput p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;->$r8$classId:I

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
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/server/pm/ShortcutUser;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutUser;->cancelAllInFlightTasks()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    check-cast p1, Lcom/android/server/pm/ShortcutPackageItem;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->waitForBitmapSaves()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    check-cast p1, Lcom/android/server/pm/ShortcutPackageItem;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->verifyStates()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_2
    check-cast p1, Lcom/android/server/pm/ShortcutLauncher;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutLauncher;->ensurePackageInfo()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_3
    check-cast p1, Lcom/android/server/pm/ShortcutPackage;

    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    const/4 v0, 0x1

    .line 34
    invoke-virtual {p1, p0, v0}, Lcom/android/server/pm/ShortcutPackage;->rescanPackageIfNeeded(ZZ)Z

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_4
    check-cast p1, Lcom/android/server/pm/ShortcutPackageItem;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->refreshPackageSignatureAndSave()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_5
    check-cast p1, Lcom/android/server/pm/ShortcutUser;

    .line 45
    .line 46
    new-instance p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;

    .line 47
    .line 48
    const/16 v0, 0x9

    .line 49
    .line 50
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p0}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_6
    check-cast p1, Lcom/android/server/pm/ShortcutLauncher;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutLauncher;->ensurePackageInfo()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_7
    check-cast p1, Lcom/android/server/pm/ShortcutPackageItem;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->refreshPackageSignatureAndSave()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_8
    check-cast p1, Lcom/android/server/pm/ShortcutUser;

    .line 70
    .line 71
    new-instance p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;

    .line 72
    .line 73
    const/16 v0, 0x8

    .line 74
    .line 75
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;-><init>(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p0}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :pswitch_9
    check-cast p1, Lcom/android/server/pm/ShortcutPackage;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
