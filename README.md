# Enable Unity Warnings

The EUW tool facilitates the inclusion of Unity C# analyzers in your VSC project with a single click.

## Getting Started

To use the EUW tool, follow these steps:

1. Download the `euw.cmd` file and place it in the root folder of your VS Code project.
2. Run the `euw.cmd` file and the tool will take care of the rest.

## Documentation

The `euw.cmd` file implements the steps described in https://code.visualstudio.com/docs/other/unity#_enabling-unity-warnings.

## Additional notes

- The `euw.cmd` file deletes the analyzers repository and rebuilds it with the latest version each time it is run.
- According to this fixed [issue](https://github.com/microsoft/Microsoft.Unity.Analyzers/issues/122#issuecomment-743747554), OmniSharp should now recognize the suppressors.
