.class public final Lcom/android/server/devicepolicy/EnforcingAdmin;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActiveAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

.field public mAuthorities:Ljava/util/Set;

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mIsRoleAuthority:Z

.field public final mPackageName:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/android/server/devicepolicy/ActiveAdmin;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    .line 13
    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 14
    iput p2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    .line 16
    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    .line 17
    iput-object p3, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mActiveAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/util/Set;I)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    .line 22
    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    .line 24
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    .line 25
    iput p4, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mActiveAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/util/Set;ILcom/android/server/devicepolicy/ActiveAdmin;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    .line 5
    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    .line 7
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    .line 8
    iput p4, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    .line 9
    iput-object p5, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mActiveAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    return-void
.end method

.method public static createEnterpriseEnforcingAdmin(ILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/EnforcingAdmin;
    .locals 7

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v6, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "enterprise"

    invoke-static {v0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    move v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/EnforcingAdmin;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/util/Set;ILcom/android/server/devicepolicy/ActiveAdmin;)V

    return-object v6
.end method

.method public static createEnterpriseEnforcingAdmin(Landroid/content/ComponentName;ILcom/android/server/devicepolicy/ActiveAdmin;)Lcom/android/server/devicepolicy/EnforcingAdmin;
    .locals 7

    .line 4
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v6, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 6
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "enterprise"

    invoke-static {v0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    move-object v0, v6

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/EnforcingAdmin;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/util/Set;ILcom/android/server/devicepolicy/ActiveAdmin;)V

    return-object v6
.end method

.method public static getRoleAuthoritiesOrDefault(ILjava/lang/String;)Ljava/util/Set;
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoles(ILjava/lang/String;)Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance p1, Ljava/util/HashSet;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 8
    .line 9
    .line 10
    check-cast p0, Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/String;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string/jumbo v2, "role:"

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_1

    .line 52
    .line 53
    const-string/jumbo p0, "default"

    .line 54
    .line 55
    .line 56
    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    :cond_1
    return-object p1
.end method

.method public static getRoles(ILjava/lang/String;)Ljava/util/Set;
    .locals 4

    .line 1
    const-class v0, Lcom/android/role/RoleManagerLocal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/role/RoleManagerLocal;

    .line 8
    .line 9
    new-instance v1, Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p0}, Lcom/android/role/RoleManagerLocal;->getRolesAndHolders(I)Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/String;

    .line 37
    .line 38
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Ljava/util/Set;

    .line 43
    .line 44
    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return-object v1
.end method

.method public static readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/devicepolicy/EnforcingAdmin;
    .locals 8

    .line 1
    const-string/jumbo v0, "package-name"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    const-string/jumbo v0, "is-role"

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const-string v2, "authorities"

    .line 17
    .line 18
    invoke-interface {p0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string/jumbo v4, "user-id"

    .line 23
    .line 24
    .line 25
    invoke-interface {p0, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    const-string v4, "EnforcingAdmin"

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    const-string p0, "Error parsing EnforcingAdmin with RoleAuthority, packageName is null."

    .line 36
    .line 37
    invoke-static {v4, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_0
    new-instance p0, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 42
    .line 43
    invoke-direct {p0, v3, v6, v1}, Lcom/android/server/devicepolicy/EnforcingAdmin;-><init>(Ljava/lang/String;ILcom/android/server/devicepolicy/ActiveAdmin;)V

    .line 44
    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_1
    if-eqz v3, :cond_4

    .line 48
    .line 49
    if-nez v2, :cond_2

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const-string/jumbo v0, "class-name"

    .line 53
    .line 54
    .line 55
    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    if-nez p0, :cond_3

    .line 60
    .line 61
    :goto_0
    move-object v4, v1

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    new-instance v1, Landroid/content/ComponentName;

    .line 64
    .line 65
    invoke-direct {v1, v3, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :goto_1
    const-string p0, ";"

    .line 70
    .line 71
    invoke-virtual {v2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {p0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    new-instance p0, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 80
    .line 81
    const/4 v7, 0x0

    .line 82
    move-object v2, p0

    .line 83
    invoke-direct/range {v2 .. v7}, Lcom/android/server/devicepolicy/EnforcingAdmin;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/util/Set;ILcom/android/server/devicepolicy/ActiveAdmin;)V

    .line 84
    .line 85
    .line 86
    return-object p0

    .line 87
    :cond_4
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v0, "Error parsing EnforcingAdmin, packageName is "

    .line 90
    .line 91
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-string/jumbo v0, "null"

    .line 95
    .line 96
    .line 97
    if-nez v3, :cond_5

    .line 98
    .line 99
    move-object v3, v0

    .line 100
    :cond_5
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v3, ", and authorities is "

    .line 104
    .line 105
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    if-nez v2, :cond_6

    .line 109
    .line 110
    move-object v2, v0

    .line 111
    :cond_6
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v0, "."

    .line 115
    .line 116
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-static {v4, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    return-object v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_1
    check-cast p1, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v3, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    .line 30
    .line 31
    iget-object v3, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    .line 32
    .line 33
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    .line 40
    .line 41
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iget-boolean v4, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    .line 46
    .line 47
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_3

    .line 56
    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    move p0, v0

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getAuthorities()Ljava/util/Set;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getAuthorities()Ljava/util/Set;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    :goto_0
    if-eqz p0, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    move v0, v1

    .line 79
    :goto_1
    return v0

    .line 80
    :cond_4
    :goto_2
    return v1
.end method

.method public final getAuthorities()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 10
    .line 11
    iget v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoleAuthoritiesOrDefault(ILjava/lang/String;)Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    .line 18
    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    .line 20
    .line 21
    return-object p0
.end method

.method public final getParcelableAdmin()Landroid/app/admin/EnforcingAdmin;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-static {v1, v2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoles(ILjava/lang/String;)Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    move-object v3, v0

    .line 14
    check-cast v3, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    sget-object v0, Landroid/app/admin/UnknownAuthority;->UNKNOWN_AUTHORITY:Landroid/app/admin/UnknownAuthority;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v3, Landroid/app/admin/RoleAuthority;

    .line 26
    .line 27
    invoke-direct {v3, v0}, Landroid/app/admin/RoleAuthority;-><init>(Ljava/util/Set;)V

    .line 28
    .line 29
    .line 30
    move-object v0, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    .line 33
    .line 34
    const-string/jumbo v3, "enterprise"

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    sget-object v0, Landroid/app/admin/DpcAuthority;->DPC_AUTHORITY:Landroid/app/admin/DpcAuthority;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    .line 47
    .line 48
    const-string/jumbo v3, "device_admin"

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    sget-object v0, Landroid/app/admin/DeviceAdminAuthority;->DEVICE_ADMIN_AUTHORITY:Landroid/app/admin/DeviceAdminAuthority;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    sget-object v0, Landroid/app/admin/UnknownAuthority;->UNKNOWN_AUTHORITY:Landroid/app/admin/UnknownAuthority;

    .line 61
    .line 62
    :goto_0
    new-instance v3, Landroid/app/admin/EnforcingAdmin;

    .line 63
    .line 64
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget-object p0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    .line 69
    .line 70
    invoke-direct {v3, v2, v0, v1, p0}, Landroid/app/admin/EnforcingAdmin;-><init>(Ljava/lang/String;Landroid/app/admin/Authority;Landroid/os/UserHandle;Landroid/content/ComponentName;)V

    .line 71
    .line 72
    .line 73
    return-object v3
.end method

.method public final hasAuthority(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getAuthorities()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    filled-new-array {v2, p0}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move-object v2, v0

    .line 28
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getAuthorities()Ljava/util/Set;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    filled-new-array {v2, v0, p0}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0
.end method

.method public final saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "package-name"

    .line 3
    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {p1, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "is-role"

    .line 11
    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    .line 14
    .line 15
    invoke-interface {p1, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 16
    .line 17
    .line 18
    const-string/jumbo v1, "user-id"

    .line 19
    .line 20
    .line 21
    iget v3, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    .line 22
    .line 23
    invoke-interface {p1, v0, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 24
    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    const-string/jumbo v2, "class-name"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {p1, v0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 40
    .line 41
    .line 42
    :cond_0
    const-string v1, ";"

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getAuthorities()Ljava/util/Set;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {v1, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string v1, "authorities"

    .line 53
    .line 54
    invoke-interface {p1, v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "EnforcingAdmin { mPackageName= "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const-string v1, ", mComponentName= "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    const-string v1, ", mAuthorities= "

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    :cond_1
    const-string v1, ", mUserId= "

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ", mIsRoleAuthority= "

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-boolean p0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    .line 57
    .line 58
    const-string v1, " }"

    .line 59
    .line 60
    invoke-static {v1, v0, p0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0
.end method
