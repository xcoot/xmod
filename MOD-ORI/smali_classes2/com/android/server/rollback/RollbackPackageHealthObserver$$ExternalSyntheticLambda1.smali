.class public final synthetic Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Ljava/util/List;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    iput-object p2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    const/4 p1, 0x5

    iput p1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Ljava/util/List;II)V
    .locals 0

    .line 2
    iput p4, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    iput-object p2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iput p3, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;->f$2:I

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-static {v2, v1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getRollbacksAvailableForImpactLevel(ILjava/util/List;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda8;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Landroid/content/rollback/RollbackInfo;

    .line 47
    .line 48
    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Landroid/content/rollback/PackageRollbackInfo;

    .line 57
    .line 58
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v5, "Rolling back high impact rollback for package: "

    .line 65
    .line 66
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    const-string v5, "RollbackPackageHealthObserver"

    .line 81
    .line 82
    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Landroid/content/rollback/RollbackInfo;

    .line 90
    .line 91
    invoke-virtual {v0, v1, v3, p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->rollbackPackage(Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;I)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    .line 96
    .line 97
    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    .line 98
    .line 99
    iget p0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;->f$2:I

    .line 100
    .line 101
    invoke-virtual {v0, p0, v1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->rollbackAllLowImpact(ILjava/util/List;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    .line 106
    .line 107
    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    .line 108
    .line 109
    iget p0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;->f$2:I

    .line 110
    .line 111
    invoke-virtual {v0, p0, v1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->rollbackAllLowImpact(ILjava/util/List;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    .line 116
    .line 117
    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    .line 118
    .line 119
    iget p0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;->f$2:I

    .line 120
    .line 121
    invoke-virtual {v0, p0, v1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->rollbackAllLowImpact(ILjava/util/List;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
