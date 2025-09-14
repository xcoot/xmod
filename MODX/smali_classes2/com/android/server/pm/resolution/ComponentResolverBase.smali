.class public abstract Lcom/android/server/pm/resolution/ComponentResolverBase;
.super Lcom/android/server/utils/WatchableImpl;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/resolution/ComponentResolverApi;


# instance fields
.field public mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

.field public mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

.field public mProvidersByAuthority:Landroid/util/ArrayMap;

.field public mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

.field public mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public componentExists(Landroid/content/ComponentName;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    return v1

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    return v1

    .line 43
    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p0, Landroid/util/ArrayMap;

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    if-eqz p0, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const/4 v1, 0x0

    .line 57
    :goto_0
    return v1
.end method

.method public dumpActivityResolvers(Lcom/android/server/pm/DumpState;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    .line 2
    .line 3
    iget-boolean p0, p1, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string p0, "\nActivity Resolver Table:"

    .line 8
    .line 9
    :goto_0
    move-object v2, p0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const-string p0, "Activity Resolver Table:"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :goto_1
    const/4 p0, 0x1

    .line 15
    invoke-virtual {p1, p0}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    const/4 v6, 0x1

    .line 20
    const-string v3, "  "

    .line 21
    .line 22
    move-object v1, p2

    .line 23
    move-object v4, p3

    .line 24
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/IntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    iput-boolean p0, p1, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public dumpContentProviders(Lcom/android/server/pm/Computer;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    move v2, v1

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const-string v4, "    "

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    if-eqz v3, :cond_3

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 31
    .line 32
    if-eqz p4, :cond_0

    .line 33
    .line 34
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-virtual {p4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-nez v6, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    if-nez v2, :cond_2

    .line 46
    .line 47
    iget-boolean v2, p3, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 48
    .line 49
    iput-boolean v5, p3, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 50
    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 54
    .line 55
    .line 56
    :cond_1
    const-string v2, "Registered ContentProviders:"

    .line 57
    .line 58
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    move v2, v5

    .line 62
    :cond_2
    const-string v5, "  "

    .line 63
    .line 64
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-static {p2, v5, v6}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v5, ":"

    .line 79
    .line 80
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_8

    .line 109
    .line 110
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Ljava/util/Map$Entry;

    .line 115
    .line 116
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 121
    .line 122
    if-eqz p4, :cond_5

    .line 123
    .line 124
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-nez v3, :cond_5

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_5
    if-nez v1, :cond_7

    .line 136
    .line 137
    iget-boolean v1, p3, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 138
    .line 139
    iput-boolean v5, p3, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 140
    .line 141
    if-eqz v1, :cond_6

    .line 142
    .line 143
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 144
    .line 145
    .line 146
    :cond_6
    const-string v1, "ContentProvider Authorities:"

    .line 147
    .line 148
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    move v1, v5

    .line 152
    :cond_7
    const-string v3, "  ["

    .line 153
    .line 154
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    const-string v0, "]:"

    .line 167
    .line 168
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    if-eqz v0, :cond_4

    .line 190
    .line 191
    const-string v2, "      applicationInfo="

    .line 192
    .line 193
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    .line 197
    .line 198
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_8
    return-void
.end method

.method public dumpProviderResolvers(Lcom/android/server/pm/DumpState;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    .line 2
    .line 3
    iget-boolean p0, p1, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string p0, "\nProvider Resolver Table:"

    .line 8
    .line 9
    :goto_0
    move-object v2, p0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const-string p0, "Provider Resolver Table:"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :goto_1
    const/4 p0, 0x1

    .line 15
    invoke-virtual {p1, p0}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    const/4 v6, 0x1

    .line 20
    const-string v3, "  "

    .line 21
    .line 22
    move-object v1, p2

    .line 23
    move-object v4, p3

    .line 24
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/IntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    iput-boolean p0, p1, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public dumpReceiverResolvers(Lcom/android/server/pm/DumpState;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    .line 2
    .line 3
    iget-boolean p0, p1, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string p0, "\nReceiver Resolver Table:"

    .line 8
    .line 9
    :goto_0
    move-object v2, p0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const-string p0, "Receiver Resolver Table:"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :goto_1
    const/4 p0, 0x1

    .line 15
    invoke-virtual {p1, p0}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    const/4 v6, 0x1

    .line 20
    const-string v3, "  "

    .line 21
    .line 22
    move-object v1, p2

    .line 23
    move-object v4, p3

    .line 24
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/IntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    iput-boolean p0, p1, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public dumpServicePermissions(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .locals 2

    .line 1
    iget-boolean v0, p2, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p2, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const-string p2, "Service permissions:"

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/IntentResolver;->filterIterator()Lcom/android/server/IntentResolver$IteratorWrapper;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    .line 23
    .line 24
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/IntentResolver$IteratorWrapper;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    check-cast p2, Landroid/util/Pair;

    .line 35
    .line 36
    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p2, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 39
    .line 40
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/component/ParsedService;->getPermission()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    const-string v1, "    "

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/component/ParsedService;->getComponentName()Landroid/content/ComponentName;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string p2, ": "

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    return-void
.end method

.method public dumpServiceResolvers(Lcom/android/server/pm/DumpState;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    .line 2
    .line 3
    iget-boolean p0, p1, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string p0, "\nService Resolver Table:"

    .line 8
    .line 9
    :goto_0
    move-object v2, p0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const-string p0, "Service Resolver Table:"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :goto_1
    const/4 p0, 0x1

    .line 15
    invoke-virtual {p1, p0}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    const/4 v6, 0x1

    .line 20
    const-string v3, "  "

    .line 21
    .line 22
    move-object v1, p2

    .line 23
    move-object v4, p3

    .line 24
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/IntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    iput-boolean p0, p1, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public getActivity(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 10
    .line 11
    return-object p0
.end method

.method public getProvider(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 12
    .line 13
    return-object p0
.end method

.method public getReceiver(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 10
    .line 11
    return-object p0
.end method

.method public getService(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 12
    .line 13
    return-object p0
.end method

.method public queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->queryIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->queryIntentForPackage(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryProvider(Lcom/android/server/pm/Computer;Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    move-object v1, p0

    .line 8
    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_2
    invoke-interface {p1, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    move-object v2, v0

    .line 35
    move-wide v3, p3

    .line 36
    move-object v5, p2

    .line 37
    move v6, p5

    .line 38
    move-object v7, p1

    .line 39
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    if-nez v5, :cond_3

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_3
    move-wide v2, p3

    .line 47
    move-object v4, p2

    .line 48
    move v6, p5

    .line 49
    move-object v7, p1

    .line 50
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProviderInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ProviderInfo;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method public queryProviders(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    .line 2
    iget-object p0, v0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 3
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 4
    invoke-virtual {p0, p6}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_2

    :cond_0
    const-wide/32 v1, 0x10000

    and-long/2addr v1, p4

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    :goto_0
    move v4, p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p6

    move-wide v6, p4

    .line 5
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZIJ)Ljava/util/List;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public queryProviders(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;
    .locals 13

    move-object/from16 v0, p6

    move-object v1, p0

    .line 6
    iget-object v1, v1, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    .line 7
    iget-object v2, v1, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 8
    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    move/from16 v6, p7

    .line 9
    invoke-virtual {v2, v6}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_0
    if-nez v0, :cond_1

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_3

    :cond_1
    const-wide/32 v2, 0x10000

    and-long v2, p4, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v3

    .line 11
    :goto_0
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v2

    .line 12
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v3

    :goto_1
    if-ge v7, v2, :cond_5

    .line 13
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 14
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getIntents()Ljava/util/List;

    move-result-object v9

    .line 15
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 16
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 17
    new-array v10, v10, [Landroid/util/Pair;

    move v11, v3

    .line 18
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_3

    .line 19
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-static {v8, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    aput-object v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 20
    :cond_3
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    move-object v0, v1

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v6, p7

    move-wide/from16 v7, p4

    .line 21
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->queryIntentFromList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;IJ)Ljava/util/List;

    move-result-object v0

    :goto_3
    return-object v0
.end method

.method public queryProviders(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;IJI)Ljava/util/List;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v11, p7

    .line 22
    iget-object v3, v0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 23
    invoke-virtual {v3, v11}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 24
    :cond_0
    iget-object v3, v0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    iget-object v3, v3, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Ljava/lang/Object;

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v12, v3

    move-object v13, v4

    :goto_0
    if-ltz v12, :cond_d

    .line 25
    iget-object v3, v0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    iget-object v3, v3, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Ljava/lang/Object;

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 26
    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    move-object/from16 v14, p1

    :cond_1
    :goto_1
    move/from16 v8, p4

    goto/16 :goto_5

    .line 27
    :cond_2
    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v14, p1

    invoke-interface {v14, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    if-nez v10, :cond_3

    :goto_2
    goto :goto_1

    .line 28
    :cond_3
    iget-object v15, v10, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-nez v15, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    .line 29
    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 30
    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v3

    move/from16 v8, p4

    invoke-static {v3, v8}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_5

    :cond_5
    move/from16 v8, p4

    :cond_6
    if-eqz v2, :cond_7

    .line 31
    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getMetaData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_5

    :cond_7
    if-nez v4, :cond_8

    .line 32
    new-instance v4, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;

    invoke-direct {v4}, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;-><init>()V

    :cond_8
    move-object v7, v4

    .line 33
    invoke-interface {v10, v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v16

    .line 34
    iget-object v3, v7, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;->mCache:Landroid/util/ArrayMap;

    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_9

    move-object v8, v3

    move-object v0, v7

    goto :goto_3

    :cond_9
    move-object v3, v15

    move-wide/from16 v4, p5

    move-object/from16 v6, v16

    move-object v0, v7

    move/from16 v7, p7

    move-object v8, v10

    .line 35
    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 36
    iget-object v4, v0, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;->mCache:Landroid/util/ArrayMap;

    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v3

    :goto_3
    if-nez v8, :cond_a

    goto :goto_4

    :cond_a
    move-object v3, v15

    move-object v4, v9

    move-wide/from16 v5, p5

    move-object/from16 v7, v16

    move/from16 v9, p7

    .line 37
    invoke-static/range {v3 .. v10}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProviderInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    if-nez v3, :cond_b

    :goto_4
    move-object v4, v0

    goto :goto_5

    :cond_b
    if-nez v13, :cond_c

    .line 38
    new-instance v13, Ljava/util/ArrayList;

    add-int/lit8 v4, v12, 0x1

    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    :cond_c
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :goto_5
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_d
    return-object v13
.end method

.method public queryReceivers(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->queryIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryReceivers(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->queryIntentForPackage(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryServices(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    .line 2
    iget-object p0, v0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 3
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 4
    invoke-virtual {p0, p6}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_2

    :cond_0
    const-wide/32 v1, 0x10000

    and-long/2addr v1, p4

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    :goto_0
    move v4, p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p6

    move-wide v6, p4

    .line 5
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZIJ)Ljava/util/List;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public queryServices(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;
    .locals 13

    move-object/from16 v0, p6

    move-object v1, p0

    .line 6
    iget-object v1, v1, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    .line 7
    iget-object v2, v1, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 8
    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    move/from16 v6, p7

    .line 9
    invoke-virtual {v2, v6}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_0
    if-nez v0, :cond_1

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_3

    :cond_1
    const-wide/32 v2, 0x10000

    and-long v2, p4, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v3

    .line 11
    :goto_0
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v2

    .line 12
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v3

    :goto_1
    if-ge v7, v2, :cond_5

    .line 13
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 14
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedService;->getIntents()Ljava/util/List;

    move-result-object v9

    .line 15
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 16
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 17
    new-array v10, v10, [Landroid/util/Pair;

    move v11, v3

    .line 18
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_3

    .line 19
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-static {v8, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    aput-object v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 20
    :cond_3
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    move-object v0, v1

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v6, p7

    move-wide/from16 v7, p4

    .line 21
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->queryIntentFromList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;IJ)Ljava/util/List;

    move-result-object v0

    :goto_3
    return-object v0
.end method

.method public querySyncProviders(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/util/List;ZI)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    add-int/lit8 v1, v1, -0x1

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ltz v1, :cond_8

    .line 12
    .line 13
    iget-object v3, v0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    move-object v5, v3

    .line 20
    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 21
    .line 22
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isSyncable()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    move-object/from16 v12, p1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    move-object/from16 v12, p1

    .line 36
    .line 37
    invoke-interface {v12, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 45
    .line 46
    if-nez v4, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    if-eqz p4, :cond_3

    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-nez v6, :cond_3

    .line 56
    .line 57
    :goto_1
    move/from16 v13, p5

    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_3
    if-nez v2, :cond_4

    .line 61
    .line 62
    new-instance v2, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;

    .line 63
    .line 64
    invoke-direct {v2}, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;-><init>()V

    .line 65
    .line 66
    .line 67
    :cond_4
    move/from16 v13, p5

    .line 68
    .line 69
    invoke-interface {v3, v13}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 70
    .line 71
    .line 72
    move-result-object v14

    .line 73
    iget-object v6, v2, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;->mCache:Landroid/util/ArrayMap;

    .line 74
    .line 75
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 84
    .line 85
    if-eqz v6, :cond_5

    .line 86
    .line 87
    :goto_2
    move-object v9, v6

    .line 88
    goto :goto_3

    .line 89
    :cond_5
    const-wide/16 v7, 0x0

    .line 90
    .line 91
    move-object v6, v4

    .line 92
    move-object v9, v14

    .line 93
    move/from16 v10, p5

    .line 94
    .line 95
    move-object v11, v3

    .line 96
    invoke-static/range {v6 .. v11}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    iget-object v7, v2, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;->mCache:Landroid/util/ArrayMap;

    .line 101
    .line 102
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    invoke-virtual {v7, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :goto_3
    if-nez v9, :cond_6

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_6
    const-wide/16 v6, 0x0

    .line 114
    .line 115
    move-object v8, v14

    .line 116
    move/from16 v10, p5

    .line 117
    .line 118
    move-object v11, v3

    .line 119
    invoke-static/range {v4 .. v11}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProviderInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ProviderInfo;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    if-nez v3, :cond_7

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_7
    iget-object v4, v0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    .line 127
    .line 128
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    check-cast v4, Ljava/lang/String;

    .line 133
    .line 134
    move-object/from16 v5, p2

    .line 135
    .line 136
    check-cast v5, Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-object/from16 v4, p3

    .line 142
    .line 143
    check-cast v4, Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    :goto_4
    add-int/lit8 v1, v1, -0x1

    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :cond_8
    return-void
.end method
