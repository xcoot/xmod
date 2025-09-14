.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda62;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/util/ArrayMap;

.field public final synthetic f$2:Ljava/util/Set;

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/util/ArrayMap;


# direct methods
.method public synthetic constructor <init>(ILandroid/util/ArrayMap;Ljava/util/Set;ILandroid/util/ArrayMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda62;->f$0:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda62;->f$1:Landroid/util/ArrayMap;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda62;->f$2:Ljava/util/Set;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda62;->f$3:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda62;->f$4:Landroid/util/ArrayMap;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda62;->f$0:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda62;->f$1:Landroid/util/ArrayMap;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda62;->f$2:Ljava/util/Set;

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda62;->f$3:I

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda62;->f$4:Landroid/util/ArrayMap;

    .line 10
    .line 11
    check-cast p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    move v5, v4

    .line 15
    :goto_0
    if-ge v5, v0, :cond_9

    .line 16
    .line 17
    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    check-cast v6, Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    check-cast v7, Landroid/content/pm/overlay/OverlayPaths;

    .line 28
    .line 29
    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    if-nez v8, :cond_0

    .line 34
    .line 35
    goto/16 :goto_4

    .line 36
    .line 37
    :cond_0
    invoke-virtual {p1, v6}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    invoke-virtual {v8, v3}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    iget-object v8, v8, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 46
    .line 47
    if-eqz v8, :cond_4

    .line 48
    .line 49
    iget-object v9, v8, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    .line 50
    .line 51
    invoke-static {v7, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    if-eqz v9, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    iget-object v9, v8, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    .line 59
    .line 60
    if-nez v9, :cond_2

    .line 61
    .line 62
    invoke-virtual {v7}, Landroid/content/pm/overlay/OverlayPaths;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    if-nez v9, :cond_4

    .line 67
    .line 68
    :cond_2
    if-nez v7, :cond_3

    .line 69
    .line 70
    iget-object v9, v8, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    .line 71
    .line 72
    invoke-virtual {v9}, Landroid/content/pm/overlay/OverlayPaths;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    if-eqz v9, :cond_3

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    iput-object v7, v8, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    .line 80
    .line 81
    invoke-virtual {v8}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 82
    .line 83
    .line 84
    :cond_4
    :goto_1
    invoke-virtual {p0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    check-cast v6, Landroid/util/ArrayMap;

    .line 89
    .line 90
    if-nez v6, :cond_5

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_5
    move v8, v4

    .line 94
    :goto_2
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    if-ge v8, v9, :cond_8

    .line 99
    .line 100
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    check-cast v9, Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    check-cast v10, Landroid/util/ArraySet;

    .line 111
    .line 112
    move v11, v4

    .line 113
    :goto_3
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    .line 114
    .line 115
    .line 116
    move-result v12

    .line 117
    if-ge v11, v12, :cond_7

    .line 118
    .line 119
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v12

    .line 123
    check-cast v12, Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {p1, v12}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    .line 126
    .line 127
    .line 128
    move-result-object v12

    .line 129
    invoke-virtual {v12, v3}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;

    .line 130
    .line 131
    .line 132
    move-result-object v12

    .line 133
    iget-object v12, v12, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 134
    .line 135
    if-eqz v12, :cond_6

    .line 136
    .line 137
    invoke-virtual {v12, v9, v7}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setSharedLibraryOverlayPaths(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)Z

    .line 138
    .line 139
    .line 140
    :cond_6
    add-int/lit8 v11, v11, 0x1

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_7
    add-int/lit8 v8, v8, 0x1

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_8
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 147
    .line 148
    goto/16 :goto_0

    .line 149
    .line 150
    :cond_9
    return-void
.end method
