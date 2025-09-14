.class public interface abstract Lcom/android/server/pm/PackageAbiHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public abstract deriveNativeLibraryPaths(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
.end method

.method public abstract derivePackageAbi(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/String;Ljava/io/File;)Landroid/util/Pair;
.end method

.method public abstract getAdjustedAbiForSharedUser(Landroid/util/ArraySet;Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;
.end method

.method public abstract getBundledAppAbis(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/PackageAbiHelper$Abis;
.end method
