.class public final Lcom/android/server/am/ActiveServices$SystemExemptedFgsTypePermission;
.super Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActiveServices;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/am/ActiveServices$SystemExemptedFgsTypePermission;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$SystemExemptedFgsTypePermission;->this$0:Lcom/android/server/am/ActiveServices;

    .line 7
    .line 8
    const-string p1, "System exempted"

    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$SystemExemptedFgsTypePermission;->this$0:Lcom/android/server/am/ActiveServices;

    .line 15
    .line 16
    const-string p1, "Media projection screen capture permission"

    .line 17
    .line 18
    invoke-direct {p0, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final checkPermission(Landroid/content/Context;IILjava/lang/String;Z)I
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/server/am/ActiveServices$SystemExemptedFgsTypePermission;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$SystemExemptedFgsTypePermission;->this$0:Lcom/android/server/am/ActiveServices;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService;->mMediaProjectionTokenMap:Landroid/util/SparseArray;

    .line 11
    .line 12
    monitor-enter p1

    .line 13
    :try_start_0
    iget-object p3, p0, Lcom/android/server/am/ActivityManagerService;->mMediaProjectionTokenMap:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    const/4 p3, 0x0

    .line 20
    if-ltz p2, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mMediaProjectionTokenMap:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Landroid/util/ArraySet;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_0

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_2

    .line 40
    :cond_0
    move p0, p3

    .line 41
    :goto_0
    monitor-exit p1

    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 p3, -0x1

    .line 46
    :goto_1
    return p3

    .line 47
    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p0

    .line 49
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/am/ActiveServices$SystemExemptedFgsTypePermission;->this$0:Lcom/android/server/am/ActiveServices;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 52
    .line 53
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Lcom/android/server/am/AppRestrictionController;->getPotentialSystemExemptionReason(I)I

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    const/4 p5, -0x1

    .line 60
    if-ne p3, p5, :cond_2

    .line 61
    .line 62
    invoke-virtual {p1, p2, p4}, Lcom/android/server/am/AppRestrictionController;->getPotentialSystemExemptionReason(ILjava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result p3

    .line 66
    if-ne p3, p5, :cond_2

    .line 67
    .line 68
    invoke-virtual {p1, p2, p4}, Lcom/android/server/am/AppRestrictionController;->getPotentialUserAllowedExemptionReason(ILjava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    :cond_2
    const/16 p1, 0x146

    .line 73
    .line 74
    const/4 p2, 0x0

    .line 75
    if-ne p3, p5, :cond_3

    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$SystemExemptedFgsTypePermission;->this$0:Lcom/android/server/am/ActiveServices;

    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    const/4 v0, 0x2

    .line 86
    invoke-virtual {p0, v0, p2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {p0, p4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-eqz p0, :cond_3

    .line 95
    .line 96
    move p3, p1

    .line 97
    :cond_3
    const/16 p0, 0xa

    .line 98
    .line 99
    if-eq p3, p0, :cond_4

    .line 100
    .line 101
    const/16 p0, 0xb

    .line 102
    .line 103
    if-eq p3, p0, :cond_4

    .line 104
    .line 105
    const/16 p0, 0x33

    .line 106
    .line 107
    if-eq p3, p0, :cond_4

    .line 108
    .line 109
    const/16 p0, 0x3f

    .line 110
    .line 111
    if-eq p3, p0, :cond_4

    .line 112
    .line 113
    const/16 p0, 0x41

    .line 114
    .line 115
    if-eq p3, p0, :cond_4

    .line 116
    .line 117
    const/16 p0, 0x12c

    .line 118
    .line 119
    if-eq p3, p0, :cond_4

    .line 120
    .line 121
    const/16 p0, 0x37

    .line 122
    .line 123
    if-eq p3, p0, :cond_4

    .line 124
    .line 125
    const/16 p0, 0x38

    .line 126
    .line 127
    if-eq p3, p0, :cond_4

    .line 128
    .line 129
    if-eq p3, p1, :cond_4

    .line 130
    .line 131
    const/16 p0, 0x147

    .line 132
    .line 133
    if-eq p3, p0, :cond_4

    .line 134
    .line 135
    packed-switch p3, :pswitch_data_1

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_4
    :pswitch_1
    move p5, p2

    .line 140
    :goto_3
    return p5

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :pswitch_data_1
    .packed-switch 0x13f
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
