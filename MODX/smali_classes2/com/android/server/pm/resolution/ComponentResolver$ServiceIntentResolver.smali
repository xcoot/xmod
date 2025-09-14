.class public final Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;
.super Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mServices:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    .line 4
    invoke-direct {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Ljava/lang/Object;

    return-void

    .line 6
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 7
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;Lcom/android/server/pm/UserManagerService;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->$r8$classId:I

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;Lcom/android/server/pm/UserManagerService;)V

    .line 9
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Ljava/lang/Object;

    .line 10
    iget-object p0, p1, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;Lcom/android/server/pm/UserManagerService;B)V
    .locals 0

    const/4 p3, 0x1

    iput p3, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->$r8$classId:I

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;Lcom/android/server/pm/UserManagerService;)V

    .line 2
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Ljava/lang/Object;

    .line 3
    iget-object p0, p1, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Ljava/lang/Object;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p2, p0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    return-void
.end method


# virtual methods
.method public final allowFilterResult(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p2, Landroid/util/Pair;

    .line 7
    .line 8
    check-cast p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/4 v0, 0x1

    .line 15
    sub-int/2addr p0, v0

    .line 16
    :goto_0
    if-ltz p0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 23
    .line 24
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 25
    .line 26
    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 31
    .line 32
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getClassName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 47
    .line 48
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    add-int/lit8 p0, p0, -0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    :goto_1
    return v0

    .line 64
    :pswitch_0
    check-cast p2, Landroid/util/Pair;

    .line 65
    .line 66
    check-cast p1, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    const/4 v0, 0x1

    .line 73
    sub-int/2addr p0, v0

    .line 74
    :goto_2
    if-ltz p0, :cond_3

    .line 75
    .line 76
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 81
    .line 82
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 83
    .line 84
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 89
    .line 90
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedService;->getClassName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_2

    .line 99
    .line 100
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 105
    .line 106
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedService;->getPackageName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_2

    .line 115
    .line 116
    const/4 v0, 0x0

    .line 117
    goto :goto_3

    .line 118
    :cond_2
    add-int/lit8 p0, p0, -0x1

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_3
    :goto_3
    return v0

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p3, Landroid/util/Pair;

    .line 7
    .line 8
    iget-object p0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 11
    .line 12
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p3, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/16 p2, 0x20

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getClassName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p1, p2, p0}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string p0, " filter "

    .line 47
    .line 48
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_0
    check-cast p3, Landroid/util/Pair;

    .line 64
    .line 65
    iget-object p0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 68
    .line 69
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p3, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const/16 p2, 0x20

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 90
    .line 91
    .line 92
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedService;->getPackageName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedService;->getClassName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {p1, p2, v0}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string p2, " filter "

    .line 104
    .line 105
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedService;->getPermission()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    if-eqz p2, :cond_0

    .line 124
    .line 125
    const-string p2, " permission "

    .line 126
    .line 127
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedService;->getPermission()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 139
    .line 140
    .line 141
    :goto_0
    return-void

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p3, Landroid/util/Pair;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/16 p0, 0x20

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(C)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 32
    .line 33
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    iget-object p2, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p2, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 40
    .line 41
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getClassName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-static {p1, p0, p2}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x1

    .line 49
    if-le p4, p0, :cond_0

    .line 50
    .line 51
    const-string p0, " ("

    .line 52
    .line 53
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 57
    .line 58
    .line 59
    const-string p0, " filters)"

    .line 60
    .line 61
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :pswitch_0
    check-cast p3, Landroid/util/Pair;

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object p0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 74
    .line 75
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const/16 p0, 0x20

    .line 87
    .line 88
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(C)V

    .line 89
    .line 90
    .line 91
    iget-object p0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 94
    .line 95
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedService;->getPackageName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    iget-object p2, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast p2, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 102
    .line 103
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/component/ParsedService;->getClassName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-static {p1, p0, p2}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const/4 p0, 0x1

    .line 111
    if-le p4, p0, :cond_1

    .line 112
    .line 113
    const-string p0, " ("

    .line 114
    .line 115
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 119
    .line 120
    .line 121
    const-string p0, " filters)"

    .line 122
    .line 123
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final filterToLabel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/util/Pair;

    .line 7
    .line 8
    return-object p1

    .line 9
    :pswitch_0
    check-cast p1, Landroid/util/Pair;

    .line 10
    .line 11
    return-object p1

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/util/Pair;

    .line 7
    .line 8
    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 11
    .line 12
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :pswitch_0
    check-cast p1, Landroid/util/Pair;

    .line 18
    .line 19
    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 22
    .line 23
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p2, Landroid/util/Pair;

    .line 7
    .line 8
    iget-object p0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 11
    .line 12
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :pswitch_0
    check-cast p2, Landroid/util/Pair;

    .line 22
    .line 23
    iget-object p0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 26
    .line 27
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedService;->getPackageName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p0, p1, [Landroid/util/Pair;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    new-array p0, p1, [Landroid/util/Pair;

    .line 10
    .line 11
    return-object p0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final newResult(Lcom/android/server/pm/Computer;Ljava/lang/Object;IIJ)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move/from16 v9, p4

    .line 8
    .line 9
    move-wide/from16 v11, p5

    .line 10
    .line 11
    iget v3, v0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->$r8$classId:I

    .line 12
    .line 13
    packed-switch v3, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    move-object/from16 v3, p2

    .line 17
    .line 18
    check-cast v3, Landroid/util/Pair;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 23
    .line 24
    invoke-virtual {v0, v9}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v13, 0x0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :cond_0
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 36
    .line 37
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 38
    .line 39
    move-object v14, v3

    .line 40
    check-cast v14, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 41
    .line 42
    invoke-interface {v14}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    .line 43
    .line 44
    .line 45
    move-result-object v15

    .line 46
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-interface {v1, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    if-eqz v10, :cond_a

    .line 55
    .line 56
    iget-object v1, v10, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 57
    .line 58
    if-eqz v1, :cond_a

    .line 59
    .line 60
    invoke-static {v10, v0, v11, v12, v9}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;JI)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_1

    .line 65
    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    :cond_1
    invoke-interface {v10, v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-wide/32 v3, 0x1000000

    .line 73
    .line 74
    .line 75
    and-long/2addr v3, v11

    .line 76
    const-wide/16 v16, 0x0

    .line 77
    .line 78
    cmp-long v3, v3, v16

    .line 79
    .line 80
    const/4 v4, 0x0

    .line 81
    const/4 v5, 0x1

    .line 82
    if-eqz v3, :cond_2

    .line 83
    .line 84
    move v3, v5

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    move v3, v4

    .line 87
    :goto_0
    const-wide/32 v6, 0x800000

    .line 88
    .line 89
    .line 90
    and-long/2addr v6, v11

    .line 91
    cmp-long v6, v6, v16

    .line 92
    .line 93
    if-eqz v6, :cond_3

    .line 94
    .line 95
    move v4, v5

    .line 96
    :cond_3
    if-eqz v3, :cond_4

    .line 97
    .line 98
    invoke-virtual {v15}, Landroid/content/IntentFilter;->isVisibleToInstantApp()Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-nez v3, :cond_4

    .line 103
    .line 104
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-nez v3, :cond_4

    .line 109
    .line 110
    goto/16 :goto_1

    .line 111
    .line 112
    :cond_4
    if-nez v4, :cond_5

    .line 113
    .line 114
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-eqz v3, :cond_5

    .line 119
    .line 120
    goto/16 :goto_1

    .line 121
    .line 122
    :cond_5
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-eqz v3, :cond_6

    .line 127
    .line 128
    const/4 v3, 0x2

    .line 129
    invoke-virtual {v10, v3}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-eqz v3, :cond_6

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_6
    iget-object v3, v10, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 137
    .line 138
    move-wide/from16 v4, p5

    .line 139
    .line 140
    move-object v6, v1

    .line 141
    move/from16 v7, p4

    .line 142
    .line 143
    move-object v8, v10

    .line 144
    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    if-nez v8, :cond_7

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_7
    iget-object v3, v10, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 152
    .line 153
    move-object v4, v0

    .line 154
    move-wide/from16 v5, p5

    .line 155
    .line 156
    move-object v7, v1

    .line 157
    move/from16 v9, p4

    .line 158
    .line 159
    invoke-static/range {v3 .. v10}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProviderInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ProviderInfo;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    if-nez v0, :cond_8

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_8
    new-instance v13, Landroid/content/pm/ResolveInfo;

    .line 167
    .line 168
    invoke-direct {v13}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 169
    .line 170
    .line 171
    iput-object v0, v13, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 172
    .line 173
    const-wide/16 v0, 0x40

    .line 174
    .line 175
    and-long/2addr v0, v11

    .line 176
    cmp-long v0, v0, v16

    .line 177
    .line 178
    if-eqz v0, :cond_9

    .line 179
    .line 180
    iput-object v15, v13, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 181
    .line 182
    :cond_9
    invoke-virtual {v15}, Landroid/content/IntentFilter;->getPriority()I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    iput v0, v13, Landroid/content/pm/ResolveInfo;->priority:I

    .line 187
    .line 188
    iput v2, v13, Landroid/content/pm/ResolveInfo;->match:I

    .line 189
    .line 190
    invoke-interface {v14}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->isHasDefault()Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    iput-boolean v0, v13, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 195
    .line 196
    invoke-interface {v14}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getLabelRes()I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    iput v0, v13, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 201
    .line 202
    invoke-interface {v14}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    iput-object v0, v13, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 207
    .line 208
    invoke-interface {v14}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIcon()I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    iput v0, v13, Landroid/content/pm/ResolveInfo;->icon:I

    .line 213
    .line 214
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 215
    .line 216
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 217
    .line 218
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    iput-boolean v0, v13, Landroid/content/pm/ResolveInfo;->system:Z

    .line 223
    .line 224
    :cond_a
    :goto_1
    return-object v13

    .line 225
    :pswitch_0
    move-object/from16 v3, p2

    .line 226
    .line 227
    check-cast v3, Landroid/util/Pair;

    .line 228
    .line 229
    iget-object v0, v0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 230
    .line 231
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 232
    .line 233
    invoke-virtual {v0, v9}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    const/4 v13, 0x0

    .line 238
    if-nez v0, :cond_b

    .line 239
    .line 240
    goto/16 :goto_3

    .line 241
    .line 242
    :cond_b
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 243
    .line 244
    move-object v4, v0

    .line 245
    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 246
    .line 247
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 250
    .line 251
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    .line 252
    .line 253
    .line 254
    move-result-object v14

    .line 255
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedService;->getPackageName()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    invoke-interface {v1, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    if-eqz v1, :cond_14

    .line 264
    .line 265
    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 266
    .line 267
    if-eqz v3, :cond_14

    .line 268
    .line 269
    invoke-static {v1, v4, v11, v12, v9}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;JI)Z

    .line 270
    .line 271
    .line 272
    move-result v3

    .line 273
    if-nez v3, :cond_c

    .line 274
    .line 275
    goto/16 :goto_3

    .line 276
    .line 277
    :cond_c
    invoke-interface {v1, v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 278
    .line 279
    .line 280
    move-result-object v15

    .line 281
    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 282
    .line 283
    const/4 v8, 0x0

    .line 284
    move-wide/from16 v5, p5

    .line 285
    .line 286
    move-object v7, v15

    .line 287
    move/from16 v9, p4

    .line 288
    .line 289
    move-object v10, v1

    .line 290
    invoke-static/range {v3 .. v10}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateServiceInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    if-nez v3, :cond_d

    .line 295
    .line 296
    goto/16 :goto_3

    .line 297
    .line 298
    :cond_d
    const-wide/32 v4, 0x1000000

    .line 299
    .line 300
    .line 301
    and-long/2addr v4, v11

    .line 302
    const-wide/16 v6, 0x0

    .line 303
    .line 304
    cmp-long v4, v4, v6

    .line 305
    .line 306
    const/4 v5, 0x0

    .line 307
    const/4 v8, 0x1

    .line 308
    if-eqz v4, :cond_e

    .line 309
    .line 310
    move v4, v8

    .line 311
    goto :goto_2

    .line 312
    :cond_e
    move v4, v5

    .line 313
    :goto_2
    const-wide/32 v9, 0x800000

    .line 314
    .line 315
    .line 316
    and-long/2addr v9, v11

    .line 317
    cmp-long v9, v9, v6

    .line 318
    .line 319
    if-eqz v9, :cond_f

    .line 320
    .line 321
    move v5, v8

    .line 322
    :cond_f
    if-eqz v4, :cond_10

    .line 323
    .line 324
    invoke-virtual {v14}, Landroid/content/IntentFilter;->isVisibleToInstantApp()Z

    .line 325
    .line 326
    .line 327
    move-result v4

    .line 328
    if-nez v4, :cond_10

    .line 329
    .line 330
    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    if-nez v4, :cond_10

    .line 335
    .line 336
    goto :goto_3

    .line 337
    :cond_10
    if-nez v5, :cond_11

    .line 338
    .line 339
    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    .line 340
    .line 341
    .line 342
    move-result v4

    .line 343
    if-eqz v4, :cond_11

    .line 344
    .line 345
    goto :goto_3

    .line 346
    :cond_11
    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    .line 347
    .line 348
    .line 349
    move-result v4

    .line 350
    if-eqz v4, :cond_12

    .line 351
    .line 352
    const/4 v4, 0x2

    .line 353
    invoke-virtual {v1, v4}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    if-eqz v1, :cond_12

    .line 358
    .line 359
    goto :goto_3

    .line 360
    :cond_12
    new-instance v13, Landroid/content/pm/ResolveInfo;

    .line 361
    .line 362
    invoke-direct {v13}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 363
    .line 364
    .line 365
    iput-object v3, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 366
    .line 367
    const-wide/16 v3, 0x40

    .line 368
    .line 369
    and-long/2addr v3, v11

    .line 370
    cmp-long v1, v3, v6

    .line 371
    .line 372
    if-eqz v1, :cond_13

    .line 373
    .line 374
    iput-object v14, v13, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 375
    .line 376
    :cond_13
    invoke-virtual {v14}, Landroid/content/IntentFilter;->getPriority()I

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    iput v1, v13, Landroid/content/pm/ResolveInfo;->priority:I

    .line 381
    .line 382
    iput v2, v13, Landroid/content/pm/ResolveInfo;->match:I

    .line 383
    .line 384
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->isHasDefault()Z

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    iput-boolean v1, v13, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 389
    .line 390
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getLabelRes()I

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    iput v1, v13, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 395
    .line 396
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    iput-object v1, v13, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 401
    .line 402
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIcon()I

    .line 403
    .line 404
    .line 405
    move-result v0

    .line 406
    iput v0, v13, Landroid/content/pm/ResolveInfo;->icon:I

    .line 407
    .line 408
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 409
    .line 410
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 411
    .line 412
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 413
    .line 414
    .line 415
    move-result v0

    .line 416
    iput-boolean v0, v13, Landroid/content/pm/ResolveInfo;->system:Z

    .line 417
    .line 418
    :cond_14
    :goto_3
    return-object v13

    .line 419
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final sortResults(Ljava/util/List;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/android/server/pm/resolution/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    check-cast p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    sget-object p0, Lcom/android/server/pm/resolution/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    check-cast p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
