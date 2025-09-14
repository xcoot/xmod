.class public final synthetic Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;

.field public final synthetic f$1:Ljava/util/Map;

.field public final synthetic f$2:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;Ljava/util/Map;Ljava/util/Map;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda1;->f$1:Ljava/util/Map;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda1;->f$2:Ljava/util/Map;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda1;->f$1:Ljava/util/Map;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda1;->f$2:Ljava/util/Map;

    .line 11
    .line 12
    check-cast p1, Ljava/lang/String;

    .line 13
    .line 14
    check-cast p2, Ljava/util/List;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget p1, v0, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    .line 34
    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;->toLegacyPermissionStates(Ljava/util/List;)Ljava/util/Map;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string p2, "Shared user "

    .line 50
    .line 51
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p1, " not found."

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const-string p1, "PermissionMigrationHelperImpl"

    .line 67
    .line 68
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_0
    return-void

    .line 72
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda1;->f$1:Ljava/util/Map;

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda1;->f$2:Ljava/util/Map;

    .line 77
    .line 78
    check-cast p1, Ljava/lang/String;

    .line 79
    .line 80
    check-cast p2, Ljava/util/List;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_3

    .line 90
    .line 91
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Lcom/android/server/pm/pkg/PackageState;

    .line 96
    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;->toLegacyPermissionStates(Ljava/util/List;)Ljava/util/Map;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string p2, "Package "

    .line 118
    .line 119
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string p1, " not found."

    .line 126
    .line 127
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    const-string p1, "PermissionMigrationHelperImpl"

    .line 135
    .line 136
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    :cond_3
    :goto_1
    return-void

    .line 140
    nop

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
