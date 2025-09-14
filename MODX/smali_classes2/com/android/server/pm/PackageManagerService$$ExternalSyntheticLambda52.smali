.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic f$1:Landroid/os/Handler;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:[Ljava/security/cert/Certificate;

.field public final synthetic f$7:Landroid/content/pm/IOnChecksumsReadyListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;I)V
    .locals 0

    .line 1
    iput p9, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$0:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$1:Landroid/os/Handler;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$2:Ljava/util/List;

    .line 8
    .line 9
    iput p4, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$3:I

    .line 10
    .line 11
    iput p5, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$4:I

    .line 12
    .line 13
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$5:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$6:[Ljava/security/cert/Certificate;

    .line 16
    .line 17
    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$7:Landroid/content/pm/IOnChecksumsReadyListener;

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$0:Lcom/android/server/pm/PackageManagerService;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$1:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$2:Ljava/util/List;

    .line 11
    .line 12
    iget v3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$3:I

    .line 13
    .line 14
    iget v4, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$4:I

    .line 15
    .line 16
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$5:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$6:[Ljava/security/cert/Certificate;

    .line 19
    .line 20
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$7:Landroid/content/pm/IOnChecksumsReadyListener;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v8, Lcom/android/server/pm/ApkChecksums$Injector;

    .line 26
    .line 27
    new-instance p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda55;

    .line 28
    .line 29
    const/4 v9, 0x2

    .line 30
    invoke-direct {p0, v0, v9}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda55;-><init>(Lcom/android/server/pm/PackageManagerService;I)V

    .line 31
    .line 32
    .line 33
    new-instance v9, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda21;

    .line 34
    .line 35
    invoke-direct {v9, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda21;-><init>(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 39
    .line 40
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    new-instance v10, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda40;

    .line 44
    .line 45
    invoke-direct {v10, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda40;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda55;

    .line 49
    .line 50
    const/4 v11, 0x3

    .line 51
    invoke-direct {v1, v0, v11}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda55;-><init>(Lcom/android/server/pm/PackageManagerService;I)V

    .line 52
    .line 53
    .line 54
    invoke-direct {v8, p0, v9, v10, v1}, Lcom/android/server/pm/ApkChecksums$Injector;-><init>(Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;)V

    .line 55
    .line 56
    .line 57
    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/ApkChecksums;->getChecksums(Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$0:Lcom/android/server/pm/PackageManagerService;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$1:Landroid/os/Handler;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$2:Ljava/util/List;

    .line 66
    .line 67
    iget v3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$3:I

    .line 68
    .line 69
    iget v4, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$4:I

    .line 70
    .line 71
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$5:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$6:[Ljava/security/cert/Certificate;

    .line 74
    .line 75
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$7:Landroid/content/pm/IOnChecksumsReadyListener;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    new-instance v8, Lcom/android/server/pm/ApkChecksums$Injector;

    .line 81
    .line 82
    new-instance p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda55;

    .line 83
    .line 84
    const/4 v9, 0x0

    .line 85
    invoke-direct {p0, v0, v9}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda55;-><init>(Lcom/android/server/pm/PackageManagerService;I)V

    .line 86
    .line 87
    .line 88
    new-instance v9, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda21;

    .line 89
    .line 90
    invoke-direct {v9, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda21;-><init>(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 94
    .line 95
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    new-instance v10, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda40;

    .line 99
    .line 100
    invoke-direct {v10, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda40;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    .line 101
    .line 102
    .line 103
    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda55;

    .line 104
    .line 105
    const/4 v11, 0x1

    .line 106
    invoke-direct {v1, v0, v11}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda55;-><init>(Lcom/android/server/pm/PackageManagerService;I)V

    .line 107
    .line 108
    .line 109
    invoke-direct {v8, p0, v9, v10, v1}, Lcom/android/server/pm/ApkChecksums$Injector;-><init>(Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;)V

    .line 110
    .line 111
    .line 112
    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/ApkChecksums;->getChecksums(Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    nop

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
