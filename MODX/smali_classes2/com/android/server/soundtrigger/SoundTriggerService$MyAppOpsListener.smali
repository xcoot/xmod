.class public final Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpChangedListener;


# instance fields
.field public final mOnOpModeChanged:Ljava/util/function/Consumer;

.field public final mOriginatorIdentity:Landroid/media/permission/Identity;

.field public final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerService;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/media/permission/Identity;Ljava/util/function/Consumer;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Uid "

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 7
    .line 8
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;->mOriginatorIdentity:Landroid/media/permission/Identity;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;->mOnOpModeChanged:Ljava/util/function/Consumer;

    .line 14
    .line 15
    :try_start_0
    iget-object p1, p1, Lcom/android/server/soundtrigger/SoundTriggerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    iget-object p3, p2, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 18
    .line 19
    const-wide/32 v1, 0x400000

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p1, p3, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iget p3, p2, Landroid/media/permission/Identity;->uid:I

    .line 31
    .line 32
    invoke-static {p1, p3}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    if-eqz p3, :cond_0

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    new-instance p3, Ljava/lang/SecurityException;

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget v0, p2, Landroid/media/permission/Identity;->uid:I

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, " attempted to spoof package name "

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object p2, p2, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p2, " with uid: "

    .line 62
    .line 63
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p3, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :catch_0
    new-instance p1, Ljava/lang/SecurityException;

    .line 78
    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string p3, "Package name not found: "

    .line 82
    .line 83
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;->mOriginatorIdentity:Landroid/media/permission/Identity;

    .line 87
    .line 88
    iget-object p0, p0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1
.end method


# virtual methods
.method public final onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string p2, "android:record_audio"

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/android/server/soundtrigger/SoundTriggerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;->mOriginatorIdentity:Landroid/media/permission/Identity;

    .line 15
    .line 16
    iget v1, v0, Landroid/media/permission/Identity;->uid:I

    .line 17
    .line 18
    iget-object v0, v0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1, p2, v1, v0}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;->mOnOpModeChanged:Ljava/util/function/Consumer;

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
