.class public final Lcom/samsung/android/localeoverlaymanager/OMSHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/android/server/om/OverlayManagerService;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/server/om/OverlayManagerService;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->mService:Lcom/android/server/om/OverlayManagerService;

    .line 13
    .line 14
    return-void
.end method

.method public static applySamsungConfigChangeOverlays(Ljava/util/List;Ljava/util/List;ILcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$ApplyObserver;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Applying change disabled - "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "OMSHelper"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "Applying change enabled - "

    .line 23
    .line 24
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    new-instance v0, Landroid/content/om/OverlayManagerExt;

    .line 38
    .line 39
    invoke-direct {v0}, Landroid/content/om/OverlayManagerExt;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda6;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda2;

    .line 62
    .line 63
    const/4 v2, 0x1

    .line 64
    invoke-direct {v1, v2}, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 65
    .line 66
    .line 67
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    new-instance v1, Lcom/samsung/android/localeoverlaymanager/OMSHelper$$ExternalSyntheticLambda0;

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    invoke-direct {v1, v2}, Lcom/samsung/android/localeoverlaymanager/OMSHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    check-cast p0, Ljava/util/List;

    .line 90
    .line 91
    const/4 v1, 0x0

    .line 92
    new-array v2, v1, [Ljava/lang/String;

    .line 93
    .line 94
    invoke-interface {p0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    check-cast p0, [Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    new-instance v2, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda6;

    .line 105
    .line 106
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Ljava/util/List;

    .line 114
    .line 115
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    new-instance v2, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda2;

    .line 120
    .line 121
    const/4 v3, 0x1

    .line 122
    invoke-direct {v2, v3}, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 123
    .line 124
    .line 125
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    new-instance v2, Lcom/samsung/android/localeoverlaymanager/OMSHelper$$ExternalSyntheticLambda0;

    .line 130
    .line 131
    const/4 v3, 0x1

    .line 132
    invoke-direct {v2, v3}, Lcom/samsung/android/localeoverlaymanager/OMSHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 133
    .line 134
    .line 135
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    check-cast p1, Ljava/util/List;

    .line 148
    .line 149
    new-array v1, v1, [Ljava/lang/String;

    .line 150
    .line 151
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    move-object v2, p1

    .line 156
    check-cast v2, [Ljava/lang/String;

    .line 157
    .line 158
    new-instance p1, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;

    .line 159
    .line 160
    const/4 v3, 0x1

    .line 161
    const/16 v4, 0xac

    .line 162
    .line 163
    move-object v1, p1

    .line 164
    move v5, p2

    .line 165
    move-object v6, p3

    .line 166
    invoke-direct/range {v1 .. v6}, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;-><init>([Ljava/lang/String;IIILandroid/content/om/ISamsungOverlayCallback;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, p0}, Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;->addPathsToRemove([Ljava/lang/String;)Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;

    .line 170
    .line 171
    .line 172
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/om/OverlayManagerExt;->replaceOverlays(Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :catchall_0
    move-exception p0

    .line 177
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 178
    .line 179
    .line 180
    :goto_0
    return-void
.end method


# virtual methods
.method public final getLocaleOverlayInfosForTarget(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->mService:Lcom/android/server/om/OverlayManagerService;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, p1, v1}, Lcom/android/server/om/OverlayManagerService;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "getLocaleOverlayInfosForTarget "

    .line 16
    .line 17
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v1, "OMSHelper"

    .line 28
    .line 29
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-lez p1, :cond_1

    .line 39
    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v2, "Overlays List size : "

    .line 43
    .line 44
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Landroid/content/om/OverlayInfo;

    .line 76
    .line 77
    const/4 v1, 0x1

    .line 78
    invoke-static {p1, v1}, Landroid/content/om/OverlayInfoExt;->isOverlayInfoExtOfCategory(Landroid/content/om/OverlayInfo;I)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_0

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    return-object v0
.end method

.method public final getLocaleOverlaysForUser(I)Ljava/util/List;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->mService:Lcom/android/server/om/OverlayManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService;->getAllOverlays(I)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/util/Map$Entry;

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Ljava/util/List;

    .line 44
    .line 45
    new-instance v1, Lcom/samsung/android/localeoverlaymanager/OMSHelper$$ExternalSyntheticLambda3;

    .line 46
    .line 47
    invoke-direct {v1, p1}, Lcom/samsung/android/localeoverlaymanager/OMSHelper$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return-object p1
.end method
